--4.	Показать товары, цена которых равна максимальной цене товара из той же подкатегории (Таблица Production.Product). Показать поля [Name], ListPrice и ProductSubcategoryID.
use AdventureWorks2019

select Name, ListPrice
from Production.Product A 
RIGHT JOIN
(select ProductSubcategoryID, max(ListPrice) as max_price
from Production.Product
where not ProductSubcategoryID is null
group by ProductSubcategoryID) B
on a.ProductSubcategoryID = b.ProductSubcategoryID
and a.ListPrice = b.max_price