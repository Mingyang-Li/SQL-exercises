SELECT 
	SalesLT.Product.ProductCategoryID,
	SalesLT.ProductCategory.Name,
	COUNT(SalesLT.Product.ProductID) AS [NumberOfProducts]
FROM SalesLT.Product

JOIN SalesLT.ProductCategory
ON SalesLT.Product.ProductCategoryID = SalesLT.ProductCategory.ProductCategoryID

GROUP BY SalesLT.Product.ProductCategoryID,SalesLT.ProductCategory.Name