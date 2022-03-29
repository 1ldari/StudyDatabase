-- Показать список покупателей (CustomerID), к которым относятся несколько сроков выполнения заказа (DueDate), из таблицы Sales.SalesOrderHeader, используя SELF JOIN.
use AdventureWorks2019

SELECT DISTINCT v1.*
FROM Sales.SalesOrderHeader AS v1 
INNER JOIN Sales.SalesOrderHeader AS v2
ON v1.DueDate<>  v2.DueDate
WHERE v1.CustomerID = v2.CustomerID
