--8.	Показать список ProductID, которые содержатся в таблице Production.Product, но не содержатся в таблице Production. TransactionHistoryArchive.

use AdventureWorks2019

SELECT ProductID
FROM Production.Product
EXCEPT
SELECT ProductID
FROM Production. TransactionHistoryArchive
