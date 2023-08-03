--4.Print the number of employees by their shift [ Number of employees working day, evening, and night]

 use AdventureWorks2017 

Select
hrs.Name shiftname,
count(*) employees 
from
[HumanResources].[EmployeeDepartmentHistory] hred inner join
[HumanResources].[Shift] hrs on hred.ShiftID=hrs.ShiftID
group by
hrs.Name