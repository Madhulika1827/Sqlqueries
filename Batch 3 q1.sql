-- 1 Print the employee with their Home address detail
---First Name, Last name, AddressType = Home, Line1, Line2, City, State ( I want the name of the 
---state here ), Postal Code and Country

Use AdventureWorks2017

select 
pp.FirstName,LastName,
pat.Name as Addresstype,
pa.[AddressLine1]as Line1,[AddressLine2] as Line2,City,
psp.[Name] as state_name,
pa.[PostalCode],
pcr.[Name] as Country

from 

HumanResources.EmployeeDepartmentHistory hredh inner join
Person.Person pp on hredh.BusinessEntityID=pp.BusinessEntityID inner join
HumanResources.Department hrd on hrd.DepartmentID=hredh.DepartmentID inner join
Person.BusinessEntityAddress pbea on pbea.BusinessEntityID=hredh.BusinessEntityID inner join
[Person].[Address] pa  on pa.AddressID=pbea.AddressID inner join
Person.StateProvince psp on pa.StateProvinceID=psp.StateProvinceID inner join
[Person].[AddressType] pat on pat.AddressTypeID=pbea.AddressTypeID inner join
[Person].[CountryRegion] pcr on psp.CountryRegionCode=pcr.CountryRegionCode

where pat.Name='Home';