--8.	Показать список ProductID, которые содержатся в таблице Production.Product, но не содержатся в таблице Production. TransactionHistoryArchive.

use AdventureWorks2019

select ProductID from Production.Product a
where not exists (
select ProductID from Production.TransactionHistoryArchive b
where a.ProductID = b.ProductID
)