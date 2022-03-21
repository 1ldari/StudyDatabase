--Найти цвета из таблицы Production.Product, где количество различных размеров больше 0 (из рассмотрения исключить нулевые значения цвета).--
SELECT  Color
FROM Production.Product
WHERE Size != 'NULL'

