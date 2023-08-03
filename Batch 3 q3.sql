-- Print the number of employees that have Home + Billing addresses

Use AdventureWorks2017

Select count(distinct hre.BusinessEntityID) as number_of_employees
from 
[HumanResources].[Employee] hre join
[Person].[BusinessEntityAddress] pba on pba.BusinessEntityID=hre.BusinessEntityID join
[Person].[AddressType] pat on pba.AddressTypeID=pat.AddressTypeID

Where pat.Name in ('Home','Billing')
