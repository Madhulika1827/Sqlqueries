--Print the Employees that are assigned to more than one departmentuse AdventureWorks2017

Select Count(*) employees_assigned

from
(select[BusinessEntityID] , Count(*)  as total
from [HumanResources].[Employee]
Group by [BusinessEntityID]) as total
Where total >1;





