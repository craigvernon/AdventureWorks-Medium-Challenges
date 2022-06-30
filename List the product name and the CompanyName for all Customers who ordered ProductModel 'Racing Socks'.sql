use AdventureWorksLT2019
GO
--SalesLT

-- SELECT * FROM SalesLT.SalesOrderHeader shows customerID and SalesOrderID
-- SELECT * FROM SalesLT.SalesOrderDetail shows SalesOrderID and ProductID

--SELECT Name FROM SalesLT.Product
--WHERE Name LIKE 'Racing Socks%' shows there is two types of racing socks available


SELECT 
SalesLT.Customer.CompanyName,
SalesLT.Product.Name
FROM SalesLT.Customer
LEFT JOIN SalesLT.SalesOrderHeader ON
SalesLT.Customer.CustomerID = SalesLT.SalesOrderHeader.CustomerID 
LEFT JOIN SalesLT.SalesOrderDetail ON
SalesLT.SalesOrderHeader.SalesOrderID = SalesLT.SalesOrderDetail.SalesOrderID
LEFT JOIN SalesLT.Product ON
SalesLT.SalesOrderDetail.ProductID = SalesLT.Product.ProductID
WHERE SalesLT.Product.Name LIKE 'Racing Socks%'












 