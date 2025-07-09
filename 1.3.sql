  --1.3
SELECT
  product.ProductId,
  product.Name,
  product.ProductNumber,
  product.Size,
  product.Color,
  product.ProductSubcategoryId,
  subcategory.Name AS SubCategory,
  productcategory.Name AS Category,
  product.ListPrice AS Price,
  product.SellEndDate 
FROM
  `adwentureworks_db.product` product
JOIN
  `adwentureworks_db.productsubcategory` subcategory
ON
  product.ProductSubcategoryId = subcategory.ProductSubcategoryID
JOIN
  `adwentureworks_db.productcategory` productcategory
ON
  subcategory.ProductCategoryID = productcategory.ProductCategoryID
WHERE
  product.ListPrice > 2000
  AND product.SellEndDate IS NULL
ORDER BY
  Price DESC;

  
