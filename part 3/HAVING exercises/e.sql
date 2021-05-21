SELECT 
	SalesLT.Address.AddressLine1 + 
	SalesLT.Address.City + 
	SalesLT.Address.StateProvince,
	COUNT(SalesLT.Address.AddressLine1 + 
	SalesLT.Address.City + 
	SalesLT.Address.StateProvince)

FROM SalesLT.Address
GROUP BY SalesLT.Address.AddressLine1 + 
	SalesLT.Address.City + 
	SalesLT.Address.StateProvince
	HAVING COUNT(SalesLT.Address.AddressLine1 + 
	SalesLT.Address.City + 
	SalesLT.Address.StateProvince) > 1