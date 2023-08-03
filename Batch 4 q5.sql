--5.Print the number of customers by Product

Use AdventureWorks2017

Select
pp.ProductID, [Name],
Count(distinct ss.CustomerID) customers

from
[Sales].[SalesOrderDetail] sd inner join
[Production].[Product] pp on sd.ProductID=pp.ProductID inner join
[Sales].[SalesOrderHeader] ss on sd.SalesOrderID=ss.SalesOrderID
group by pp.ProductID, pp.Name

Order by 
customers desc

