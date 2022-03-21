-- 5.	Показать список сроков выполнения заказа (DueDate), которые относятся к нескольким покупателям (CustomerID), из таблицы Sales.SalesOrderHeader, используя SELF JOIN.

use AdventureWorks2019

select DueDate, Count(CustomerID) 
from Sales.SalesOrderHeader
group by DueDate

