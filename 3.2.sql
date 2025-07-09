--3.2
SELECT
  vendor.VendorId,
  vendor_contact.ContactId,
  vendor_contact.ContactTypeId,
  vendor.Name,
  vendor.CreditRating,
  vendor.ActiveFlag,
  vendor_address.AddressId,
  address.City
FROM
  `adwentureworks_db.vendor` AS vendor
LEFT JOIN
  `adwentureworks_db.vendorcontact` AS vendor_contact
ON
  vendor.VendorID = vendor_contact.VendorID
LEFT JOIN
  `adwentureworks_db.vendoraddress` AS vendor_address
ON
  vendor.VendorID = vendor_address.VendorID
LEFT JOIN
  `adwentureworks_db.address`AS address
ON
  vendor_address.AddressID = address.AddressID;
