use AdventureWorksLT2019
GO
--Subtotal in SalesOrderHeader largest to smallet
--For each order, show CompanyName, and the total weight

-- SELECT * FROM SalesLT.SalesOrderHeader contains SalesOrderID, CustomerID and subtotal
-- SELECT * FROM SalesLT.Customer contains CompanyName and CustomerID
-- SELECT * FROM SalesLT.Product contains weight and productID
-- SELECT * FROM SalesLT.SalesOrderDetail contains product ID and salesOrderID


SELECT
SalesLT.SalesOrderHeader.SubTotal,
SalesLT.Customer.CompanyName,
SalesLT.Product.Weight
FROM SalesLT.SalesOrderHeader
LEFT JOIN SalesLT.Customer ON
SalesLT.Customer.CustomerID = SalesLT.SalesOrderHeader.CustomerID
LEFT JOIN SalesLT.SalesOrderDetail ON
SalesLT.SalesOrderDetail.SalesOrderID = SalesLT.SalesOrderHeader.SalesOrderID
LEFT JOIN SalesLT.Product ON
SalesLT.Product.ProductID = SalesLT.SalesOrderDetail.ProductID
ORDER BY SalesLT.SalesOrderHeader.SubTotal DESC

























 