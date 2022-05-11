-- 1.	Показать Фамилию Имя и Отчество самого молодого сотрудника (Таблицы HumanResources.Employee и Person.Person). Показать поля FirstName, MiddleName, LastName.
use AdventureWorks2019

select FirstName, MiddleName, LastName 
from Person.Person
where BusinessEntityID = 
(select BusinessEntityID from HumanResources.Employee where BirthDate = 
(select max(BirthDate) from HumanResources.Employee))
