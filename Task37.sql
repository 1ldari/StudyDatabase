-- 7.	Показать комбинированный список таблиц Production.Product по полям ProductID, StandartCost, Purchasing.ProductVendor по полям ProductID, StandardPrice, используя UNION.


use AdventureWorks2019

select ProductID, StandardCost as Price
from Production.Product

union

select ProductID, StandardPrice as Price
from Purchasing.ProductVendor