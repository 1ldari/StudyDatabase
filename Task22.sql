--2)	Найти возраст самой молодой сотрудницы из таблицы HumanResourses.Employee
SELECT  max(BirthDate) AS max
FROM HumanResources.Employee
WHERE Gender = 'F' 


