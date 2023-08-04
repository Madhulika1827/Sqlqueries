--2. Print the number of employees that don't have shipping address

use AdventureWorks2017

select count (*) as Emp_without_shipping_address

from [Person].[BusinessEntityAddress] p
inner join 
 Person.AddressType a on  p.AddressTypeID = a.AddressTypeID

where a.[Name] <> 'Shipping' or p.AddressTypeID is null

