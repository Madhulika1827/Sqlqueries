--4. Number of sales by their status

Use AdventureWorks2017

Select [Status],
count(*) as no_of_sales
from
[Sales].[SalesOrderHeader]
group by Status
