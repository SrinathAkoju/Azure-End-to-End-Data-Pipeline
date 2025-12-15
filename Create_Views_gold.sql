---CREATE VIEW ProductCategories------
CREATE VIEW gold.ProductCategories
AS 
SELECT 
    * 
FROM
    OPENROWSET 
        (
            BULK'https://awdatalakestorage.blob.core.windows.net/silver/ProductCategories/',
            FORMAT = 'PARQUET'
        ) AS QUER1

---CREATE VIEW Product_Subcategories------
CREATE VIEW gold.Product_Subcategories
AS 
SELECT 
    * 
FROM
    OPENROWSET 
        (
            BULK'https://awdatalakestorage.blob.core.windows.net/silver/Product_Subcategories/',
            FORMAT = 'PARQUET'
        ) AS QUER1
                        
---CREATE VIEW Products------
CREATE VIEW gold.Products
AS 
SELECT 
    * 
FROM
    OPENROWSET 
        (
            BULK'https://awdatalakestorage.blob.core.windows.net/silver/Products/',
            FORMAT = 'PARQUET'
        ) AS QUER1

---CREATE VIEW Returns------
CREATE VIEW gold.Returns
AS 
SELECT 
    * 
FROM
    OPENROWSET 
        (
            BULK'https://awdatalakestorage.blob.core.windows.net/silver/Returns/',
            FORMAT = 'PARQUET'
        ) AS QUER1

---CREATE VIEW Territories------
CREATE VIEW gold.Territories
AS 
SELECT 
    * 
FROM
    OPENROWSET 
        (
            BULK'https://awdatalakestorage.blob.core.windows.net/silver/Territories/',
            FORMAT = 'PARQUET'
        ) AS QUER1

---CREATE VIEW calendar------
CREATE VIEW gold.calendar
AS 
SELECT 
    * 
FROM
    OPENROWSET 
        (
            BULK'https://awdatalakestorage.blob.core.windows.net/silver/calendar/',
            FORMAT = 'PARQUET'
        ) AS QUER1


---CREATE VIEW customers------
CREATE VIEW gold.customers
AS 
SELECT 
    * 
FROM
    OPENROWSET 
        (
            BULK'https://awdatalakestorage.blob.core.windows.net/silver/customers/',
            FORMAT = 'PARQUET'
        ) AS QUER1


---CREATE VIEW sales------
CREATE VIEW gold.sales
AS 
SELECT 
    * 
FROM
    OPENROWSET 
        (
            BULK'https://awdatalakestorage.blob.core.windows.net/silver/sales/',
            FORMAT = 'PARQUET'
        ) AS QUER1
