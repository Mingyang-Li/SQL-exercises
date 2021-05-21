SELECT 
	P1.Name,
	COUNT(P2.ParentProductCategoryID) [NumberOfSubcategories]
FROM SalesLT.ProductCategory P1

LEFT JOIN SalesLT.ProductCategory P2
ON P1.ProductCategoryID = P2.ParentProductCategoryID

GROUP BY P1.Name
	HAVING COUNT(P2.ParentProductCategoryID) = 0

ORDER BY NumberOfSubcategories DESC