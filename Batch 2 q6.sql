--6.Print the name of the CoutryRegion with the highest number of employees

use AdventureWorks2017

Select top 1count(hre.BusinessEntityID) number, max(pcr.[Name]) highestfrom[Person].[CountryRegion] pcr join[Person].[StateProvince] psp on pcr.CountryRegionCode=psp.CountryRegionCode join[Person].[Address] pa on psp.[StateProvinceID]=pa.StateProvinceID  join[Person].[BusinessEntityAddress] pbea on pbea.AddressID=pa.AddressID  join[HumanResources].[Employee] hre on hre.BusinessEntityID=pbea.BusinessEntityIDgroup bypcr.[Name]Order by number desc;