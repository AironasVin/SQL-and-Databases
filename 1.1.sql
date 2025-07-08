  --1.1
SELECT
  product.ProductId,
  product.Name,
  product.ProductNumber,
  product.Size,
  product.Color,
  product.ProductSubcategoryId,
  subcategory.Name AS SubCategory
FROM
  `adwentureworks_db.product` product
JOIN
  `adwentureworks_db.productsubcategory` subcategory
ON
  product.ProductSubcategoryId = subcategory.ProductSubcategoryID
ORDER BY
  SubCategory;
