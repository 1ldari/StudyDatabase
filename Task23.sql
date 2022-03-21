--3)	Найти среднее число часов выходных для разных полов из таблицы HumanResources.Employee.
SELECT Gender, AVG(VacationHours) AS Average_vacations
FROM HumanResources.Employee
Group BY Gender 


