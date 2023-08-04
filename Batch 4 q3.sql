--Number of sales by Online vs non-online

use [AdventureWorks2017]

Select
case when [OnlineOrderFlag] = 1
then 'online'
else 'non-online'
end type,
count(*) orders
from [Sales].[SalesOrderHeader]
group by [OnlineOrderFlag]

