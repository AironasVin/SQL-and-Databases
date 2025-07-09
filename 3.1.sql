--3.1
SELECT
  sales_detail.SalesOrderId,
  sales_detail.OrderQty,
  sales_detail.UnitPrice,
  sales_detail.LineTotal,
  sales_detail.ProductId,
  sales_detail.SpecialOfferID,
  spec_offer_product.ModifiedDate,
  spec_offer.Category,
  spec_offer.Description
FROM
  `tc-da-1.adwentureworks_db.salesorderdetail` AS sales_detail
LEFT JOIN
  `tc-da-1.adwentureworks_db.specialofferproduct` AS spec_offer_product
ON
  sales_detail.productId = spec_offer_product.ProductID
  AND sales_detail.SpecialOfferID = spec_offer_product.SpecialOfferID
LEFT JOIN
  `tc-da-1.adwentureworks_db.specialoffer` AS spec_offer
ON
  sales_detail.SpecialOfferID = spec_offer.SpecialOfferID
ORDER BY
  sales_detail.LineTotal DESC;
