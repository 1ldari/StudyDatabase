4) --Найти цвета из таблицы Production.Product, где количество различных размеров больше 0 (из рассмотрения исключить нулевые значения цвета).--
USE AdventureWorks2019
SELECT  Color
FROM Production.Product
WHERE Size IS NOT NULL
