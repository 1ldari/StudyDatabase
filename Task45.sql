--5.	Показать товары, цена которых больше средней цены в любом размере (Таблица Production.Product). Показать поля [Name], Size и ListPrice.
 use AdventureWorks2019

select Name, Size, ListPrice 
from Production.Product A
where ListPrice>
(select avg_price from
(select size, avg(ListPrice) as avg_price
from Production.Product
where not size is null
group by Size) B
where B.Size=A.size)