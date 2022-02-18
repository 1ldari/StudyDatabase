--7.	Показать тип сотрудника (PersonType), его ФИО (FirstName, MiddleName и LastName) из таблицы Person.Person.
--Все неизвестные значения поля LastName заменить на '---'. Названия полей оставить без изменений.
SELECT PersonType, FirstName, MiddleName, ISNULL(LastName, '---') as LastName FROM Person.Person
