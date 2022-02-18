--8.	Из таблицы Production.Product показать поля ProductID, [Name] с применением функции COALESCE().
--Показать поле Meauserement , так, чтобы, если значение в поле Weight известно, то показать его, 
--а иначе, показать значение в поле ProductLine. Если и в поле ProductLine значение неизвестно,
--то вывести значение 'UNKNOWN'.
SELECT ProductID, [Name], COALESCE(CAST(Weight AS varchar), ProductLine, 'UNKNOWN') AS Measurement
FROM Production.Product