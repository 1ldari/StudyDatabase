--3.	Показать категорию (ProductSubcategoryID) товаров, для которой существует более 7 размеров (Таблица Production.Product). Показать поля [Name], Size и ProductSubcategoryID.
use AdventureWorks2019

select Name, ProductSubcategoryID from Production.Product
where ProductSubcategoryID in
(select ID from
(select ProductSubcategoryID as ID, count(Size) as cnt
from Production.Product
group by ProductSubcategoryID) A
where cnt>7)
