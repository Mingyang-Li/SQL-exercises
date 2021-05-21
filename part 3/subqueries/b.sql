SELECT 
	SalesLT.SalesOrderDetail.ProductID,
	SalesLT.Product.Name,
	COUNT(SalesLT.SalesOrderDetail.ProductID) AS [NumberOfTimesBeingSold]

FROM SalesLT.SalesOrderDetail

JOIN SalesLT.Product
ON SalesLT.Product.ProductID = SalesLT.SalesOrderDetail.ProductID

GROUP BY SalesLT.SalesOrderDetail.ProductID, SalesLT.Product.Name
	HAVING COUNT(SalesLT.SalesOrderDetail.ProductID) > 1
ORDER BY COUNT(SalesLT.SalesOrderDetail.ProductID)
