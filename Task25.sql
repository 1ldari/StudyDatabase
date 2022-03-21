-- Вывести ProductID из таблицы Production.ProductListPriceHistory у которых средняя цена (ListPrice) меньше 10. Добавить столбец с рангом, определяя его порядок в зависимости от количества строк, содержащих среднюю цену. (Использовать RANK)

USE  AdventureWorks2019

select ProductId, cnt, rank() over(order by cnt) rnk
from
(select ProductId, avg(ListPrice) as avg_price, count(ListPrice) as cnt
from Production.ProductListPriceHistory
group by ProductId) A
where avg_price < 10
