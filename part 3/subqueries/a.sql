SELECT 
	SalesLT.Product.ProductID,
	SalesLT.Product.ListPrice

FROM SalesLT.Product

where (SELECT AVG(SalesLT.Product.ListPrice) FROM SalesLT.Product) < SalesLT.Product.ListPrice