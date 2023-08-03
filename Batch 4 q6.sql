-- 6. Print the most popular product

Use AdventureWorks2017

Select top 1
pp.Name, sum(sod.[OrderQty]) quantity
from [Production].[Product] pp join
[Sales].[SalesOrderDetail] sod on pp.[ProductID]=sod.[ProductID]
group by pp.Name


