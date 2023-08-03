
--1..Print the names of the employees who have highest no of leaves

Use [AdventureWorks2017]
select [VacationHours], [SickLeaveHours]from [HumanResources].[Employee]


Select
PP.FirstName,MiddleName,LastName,
HRE.VacationHours + HRE.SickLeaveHours as leavehours
from
HumanResources.Employee  HRE inner join
Person.Person PP on HRE.BusinessEntityID=PP.BusinessEntityID
WHERE HRE.VacationHours + HRE.SickLeaveHours = 
(SELECT MAX(VacationHours + SickLeaveHours)
from [HumanResources].[Employee]);



