--5.	Показать поля LocationID, ScheduledStartDate и ScheduledEndDate из таблицы Production.WorkOrderRouting,
--где поле LocationID содержит 45.
SELECT LocationID, ScheduledStartDate, ScheduledEndDate FROM Production.WorkOrderRouting
WHERE LocationID = 45