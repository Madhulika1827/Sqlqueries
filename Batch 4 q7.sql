--7.Print the products by their revenue

Use AdventureWorks2017

select [LineTotal] from [Sales].[SalesOrderDetail]

Select
pp.ProductID, [Name],
ss.LineTotal
from 
[Production].[Product] pp join
[Sales].[SalesOrderDetail] ss on pp.ProductID=ss.ProductID
order by ss.LineTotal desc
