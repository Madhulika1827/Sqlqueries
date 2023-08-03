--Print the number of employees that are not assigned to any deparment.

Select count(*) as Employees_not_assigned

from

[HumanResources].[Employee] hre join
[HumanResources].[EmployeeDepartmentHistory] hred on hre.BusinessEntityID=hred.BusinessEntityID
where hred.DepartmentID is null;

