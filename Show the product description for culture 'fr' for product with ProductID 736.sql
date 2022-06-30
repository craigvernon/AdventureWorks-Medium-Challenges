use AdventureWorksLT2019
GO

-- SELECT * FROM SalesLT.Product contains product, product ID, 
--ProductCategoryID, ProductModelID
-- SELECT * FROM SalesLT.ProductDescription contains product description and product description id
-- SELECT * FROM SalesLT.ProductCategory contains product categoryID, ParentProductCategoryID
-- SELECT * FROM SalesLT.ProductModel contains ProductModelID
-- SELECT * FROM SalesLT.ProductModelProductDescription contains both the ProductModelID, ProductDescriptionID, 
--culture
-- need description, cultureFR and ProductID 736

SELECT
SalesLT.Product.ProductID,
SalesLT.ProductDescription.Description,
SalesLT.ProductModelProductDescription.Culture
FROM
SalesLT.Product
LEFT JOIN SalesLT.ProductModelProductDescription ON
SalesLT.Product.ProductModelID = SalesLT.ProductModelProductDescription.ProductModelID
LEFT JOIN SalesLT.ProductDescription ON
SalesLT.ProductModelProductDescription.ProductDescriptionID = SalesLT.ProductDescription.ProductDescriptionID
WHERE SalesLT.Product.ProductID = 736 AND SalesLT.ProductModelProductDescription.Culture = 'FR'



















 