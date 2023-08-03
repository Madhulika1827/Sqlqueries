--1.Print Name of the employee, Department name, StartDate, EndDate - Ordered by Employee, StartDate ascendinguse AdventureWorks2017Select
pp.[FirstName],
hrd.[Name],
hredh.[StartDate],[EndDate]

from

Person.person pp inner join
HumanResources.EmployeeDepartmentHistory hredh on pp.BusinessEntityID=hredh.BusinessEntityID left join
HumanResources.Department hrd on hrd.DepartmentID=hredh.DepartmentID

Order by StartDate Asc 
