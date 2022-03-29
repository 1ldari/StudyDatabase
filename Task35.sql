-- 5.	Показать список сроков выполнения заказа (DueDate), которые относятся к нескольким покупателям (CustomerID), из таблицы Sales.SalesOrderHeader, используя SELF JOIN.
use AdventureWorks2019
SELECT DISTINCT v1.*
FROM Sales.SalesOrderHeader AS v1 
INNER JOIN Sales.SalesOrderHeader AS V2 
ON v1.DueDate = v2.DueDate
WHERE v1.CustomerID <> v2.CustomerID
