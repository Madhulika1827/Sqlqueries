--Print n th highest salary

Use [AdventureWorks2017]

Select * from [HumanResources].[EmployeePayHistory]
Order by [Rate] desc;

Select 
BusinessEntityID, Rate
from ( select ROW_NUMBER() over (order by Rate desc) as sno ,BusinessEntityID,Rate
from [HumanResources].[EmployeePayHistory]) sal where sno= 25;


