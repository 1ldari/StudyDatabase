-- Показать список покупателей (CustomerID), к которым относятся несколько сроков выполнения заказа (DueDate), из таблицы Sales.SalesOrderHeader, используя SELF JOIN.

use AdventureWorks2019

select CustomerID, Count(*) 
from Sales.SalesOrderHeader
group by CustomerID
