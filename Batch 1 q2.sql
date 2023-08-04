--2 Print the names of the employees that took the second highest leaves
--get the 2nd highest no of leaves.

use [AdventureWorks2017]

Select pp.FirstName, pp.LastName, 
sum(hre.VacationHours + hre.SickLeaveHours)  Totalhours
from HumanResources.Employee hre
join HumanResources.EmployeeDepartmentHistory edh on hre.BusinessEntityID = edh.BusinessEntityID
Join Person.Person pp on hre.BusinessEntityID=pp.BusinessEntityID
where edh.EndDate is null
group by pp.FirstName, pp.LastName
having sum(hre.VacationHours + hre.SickLeaveHours) =
(select max(Totalhours) from
(select sum(hre.VacationHours + hre.SickLeaveHours)  Totalhours
from HumanResources.Employee hre
join HumanResources.EmployeeDepartmentHistory edh on hre.BusinessEntityID = edh.BusinessEntityID
join Person.Person pp on hre.BusinessEntityID = pp.BusinessEntityID
where edh.EndDate is null
group by pp.FirstName, pp.LastName) top1
where Totalhours < (select max(Totalhours) from
(select sum(e.VacationHours + e.SickLeaveHours)  Totalhours
from HumanResources.Employee e
join HumanResources.EmployeeDepartmentHistory edh on e.BusinessEntityID = edh.BusinessEntityID
join person.Person p on p.BusinessEntityID = e.BusinessEntityID
where edh.EndDate is null
group by p.FirstName, p.LastName) top2))






