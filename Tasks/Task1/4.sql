--4.	Из таблицы Purchasing.ProductVendor показать ID товара (ProductID), минимальное и максимальное количество
--заказов (MinOrderQty и MaxOrderQty) и существующее количество заказов на данный момент (OnOrderQty).
SELECT ProductID, MinOrderQty, MaxOrderQty FROM Purchasing.ProductVendor
WHERE OnOrderQty IS NOT NULL
