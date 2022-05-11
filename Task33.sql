-- Показать список людей (поля FirstName, LastName), в котором указано, есть ли у человека часы отпуска (VacationHours) или нет, из таблиц HumanResources.Employee, Person.Person, используя RIGHT OUTER JOIN.

use AdventureWorks2019

select a.BusinessEntityID, a.FirstName, a.LastName, b.VacationHours
from Person.Person a RIGHT OUTER JOIN HumanResources.Employee b
on a.BusinessEntityID = b.BusinessEntityID
order by a.BusinessEntityID