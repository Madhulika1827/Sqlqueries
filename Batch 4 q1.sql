--1.Get the customers and their Sale value ( total due )

Use AdventureWorks2017

Select * from [Sales].[SalesOrderHeader]


Select
sc.CustomerID,
sum(ss.TotalDue)  dues

from

[Sales].[Customer] sc join
[Sales].[SalesOrderHeader] ss on sc.[CustomerID] =ss.[CustomerID]
group by sc.CustomerID, sc.[StoreID];

