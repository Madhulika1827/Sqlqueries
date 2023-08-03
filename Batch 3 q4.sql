--4. Print the count of employees that are living in Texas state.

Use AdventureWorks2017

select
count(*)  as Employees_in_texas
from
[Person].[Address] pa inner join
[Person].[StateProvince] psp on pa.StateProvinceID=psp.StateProvinceID

where psp.[Name]='Texas'


