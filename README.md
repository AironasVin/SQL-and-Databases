# SQL and Databases

## Main objective
Main objective is to implement SQL queries solving business questions and exploring the Adventureworks 2005 database in BigQuery.

## Database 
[AdventureWorks database]( https://drive.google.com/file/d/1-Qsnn3bg0_PYgY5kKJOUDG8xdKLvOLPK/view) is a sample database provided by Microsoft. It includes various tables and represents a fictional company's operations, focusing on manufacturing, sales, purchases and other business related processes. 

❗ I have also uploaded exercises and queries with wider description into [Google Sheets document](https://docs.google.com/spreadsheets/d/1Ayg_DVnVorki0QZMEUYEpoBNd65C1YT8heValk2Dejk/edit?usp=sharing)

# Tasks

## 1. An Overview of Products
1.1. You have been asked to **retrieve product data** from the Product table, focusing only on products that have an associated Product Subcategory.

Make sure to include the following columns in your result: ```ProductId, Name, ProductNumber, Size, Color, ProductSubcategoryId, Product Subcategory Name```

Order the results by ```Subcategory Name```.

**Solution:** [1.1. Query](https://github.com/AironasVin/SQL-and-Databases/blob/main/1.1.sql)
<br>

**1.2.** Update 1.1. query to include ```Product Category Name``` in addition to the ```Product Subcategory``` and order final results by ```Category Name```.

**Solution:** [1.2. Query](https://github.com/AironasVin/SQL-and-Databases/blob/main/1.2.sql)
<br>

**1.3** Using the existing query as a starting point, modify it to retrieve information about the most expensive bikes based on the following criteria:

Select bikes with a list price greater than **2000**.
Only include bikes that are **actively sold** (i.e., they do not have a Sales End Date).
Order the results by ```List Price```, from highest to lowest.

**Solution:** [1.3. Query](https://github.com/AironasVin/SQL-and-Databases/blob/main/1.3.sql)
<br>

## 2. Reviewing Work Orders
**2.1.** Create an aggregated query to analyze data from the **WorkOrderRouting** table for **January 2004**. Your query should:
1. Group the data by ```LocationId```.
2. For each ```LocationId```, calculate and select:
- The total number of unique work orders.
- The total number of unique products.
- The sum of the actual cost.

**Solution:** [2.1. Query](https://github.com/AironasVin/SQL-and-Databases/blob/main/2.1.sql)
<br>

**2.2.** Build on your **2.1 query** by making the following updates:

Include the ```Location Name``` in your results.
For each ```LocationId```, calculate and include the **average number of days** between the **Actual Start Date** and the **Actual End Date**.

**Solution:** [2.2. Query](https://github.com/AironasVin/SQL-and-Databases/blob/main/2.2.sql)
<br>

**2.3.** Write a query to retrieve all ```Work Orders``` from **January 2004** where the Actual Cost is greater than **300**.

**Solution:** [2.3. Query](https://github.com/AironasVin/SQL-and-Databases/blob/main/2.3.sql)
<br>

## 3. Query Validation
### Below, there are 2 queries that need to be fixed/updated.

**3.1.** Your colleague has written a query to retrieve the list of orders linked to special offers. While the query runs without errors, the results seem incorrect, and the numbers do not match expectations.

**Query:**
```sql
SELECT sales_detail.SalesOrderId
          ,sales_detail.OrderQty
          ,sales_detail.UnitPrice
          ,sales_detail.LineTotal
          ,sales_detail.ProductId
          ,sales_detail.SpecialOfferID
          ,spec_offer_product.ModifiedDate
          ,spec_offer.Category
          ,spec_offer.Description

    FROM `tc-da-1.adwentureworks_db.salesorderdetail`  as sales_detail

    left join `tc-da-1.adwentureworks_db.specialofferproduct` as spec_offer_product
    on sales_detail.productId = spec_offer_product.ProductID

    left join `tc-da-1.adwentureworks_db.specialoffer` as spec_offer
    on sales_detail.SpecialOfferID = spec_offer.SpecialOfferID

    order by LineTotal desc
```
**Solution:** [3.1. Query](https://github.com/AironasVin/SQL-and-Databases/blob/main/3.1.sql)
<br>

**3.2.** Your colleague has written a query to retrieve basic Vendor information, but the query is not running correctly.

Review the query to identify and fix any errors preventing it from running properly.

Provide suggestions to improve its readability and make it easier to debug.

**Query:**

```sql
SELECT  a.VendorId as Id,vendor_contact.ContactId, b.ContactTypeId,
        a.Name,
        a.CreditRating,
        a.ActiveFlag,
        c.AddressId,d.City

FROM `tc-da-1.adwentureworks_db.Vendor` as a

left join `tc-da-1.adwentureworks_db.vendorcontact` as vendor_contact
on vendor.VendorId = vendor_contact.VendorId
left join `tc-da1.adwentureworks_db.vendoraddress` as c on a.VendorId = c.VendorId

left join `tc-da-1.adwentureworks_db.address` as address
on vendor_address.VendorId = d.VendorId
```

**Solution:** [3.2. Query](https://github.com/AironasVin/SQL-and-Databases/blob/main/3.2.sql)
