use AdventureWorksLT2019
GO
--How many products in ProductCategory 'Cranksets' have been sold to an address in 'London'?
-- SalesLT.ProductCategory contains ProductCategoryID, ParentProductCategoryID, Cranksets
-- SalesLT.Product contains         ProductCategoryID,                ProductID
-- salesOrderDetail contains                salesOrderID              ProductID
-- SalesOrderHeader contains customerID and salesOrderID
-- CustomerAddress contains  customerID
-- Address          contains customerID
--SELECT * FROM SalesLT.SalesOrderDetail "name"

SELECT
COUNT(SalesLT.ProductCategory.Name) 
FROM SalesLT.ProductCategory
FULL OUTER JOIN SalesLT.Product ON
SalesLT.ProductCategory.ProductCategoryID = SalesLT.Product.ProductCategoryID
FULL OUTER JOIN SalesLT.SalesOrderDetail ON
SalesLT.Product.ProductID = SalesLT.SalesOrderDetail.ProductID
FULL OUTER JOIN SalesLT.SalesOrderHeader ON
SalesLT.SalesOrderDetail.SalesOrderID = SalesLT.SalesOrderHeader.SalesOrderID
FULL OUTER JOIN SalesLT.CustomerAddress ON
SalesLT.SalesOrderHeader.CustomerID = SalesLT.CustomerAddress.CustomerID
FULL OUTER JOIN SalesLT.Address ON
SalesLT.CustomerAddress.AddressID = SalesLT.Address.AddressID
WHERE SalesLT.Address.City = 'London' AND SalesLT.ProductCategory.Name = 'Cranksets'










































 