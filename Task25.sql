-- Вывести ProductID из таблицы Production.ProductListPriceHistory у которых средняя цена (ListPrice) меньше 10. Добавить столбец с рангом, определяя его порядок в зависимости от количества строк, содержащих среднюю цену. (Использовать RANK)
USE AdventureWorks2019
SELECT RANK() OVER(ORDER BY (ListPrice)) AS N 
, ProductID 
, (ListPrice) 
FROM Production.ProductListPriceHistory
Where (ListPrice) <10;
