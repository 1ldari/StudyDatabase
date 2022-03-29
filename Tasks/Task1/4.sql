--4.	Из таблицы Purchasing.ProductVendor показать ID товара (ProductID), минимальное и максимальное количество
--заказов (MinOrderQty и MaxOrderQty) и существующее количество заказов на данный момент (OnOrderQty).
use AdventureWorks2019
SELECT ProductID, MinOrderQty, MaxOrderQty,OnOrderQty  FROM Purchasing.ProductVendor
WHERE OnOrderQty IS NOT NULL
