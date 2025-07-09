  --1.2
SELECT
  product.ProductId,
  product.Name,
  product.ProductNumber,
  product.Size,
  product.Color,
  product.ProductSubcategoryId,
  subcategory.Name AS SubCategory,
  productcategory.Name AS Category
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
ORDER BY
  Category;
  
