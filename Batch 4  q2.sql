--2. Get the names of the salespersons that did the highest sale

Use AdventureWorks2017

select
pp.FirstName,LastName,
sp.BusinessEntityID , 
max(ss.TotalDue) highestsale

from 
[Sales].[SalesOrderHeader] ss join
[Sales].[SalesPerson] sp on ss.TerritoryID=sp.TerritoryID  join
[Person].[Person] pp on pp.BusinessEntityID=sp.[BusinessEntityID]

group by 
pp.FirstName , sp.BusinessEntityID, pp.LastName
order by highestsale desc;

