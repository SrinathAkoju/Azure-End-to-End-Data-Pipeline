CREATE DATABASE Scoped CREDENTIAL cred_sri
WITH
     IDENTITY = 'Managed Identity'

CREATE EXTERNAL DATA SOURCE source_gold
WITH
(
    LOCATION = 'https://awdatalakestorage.blob.core.windows.net/gold',
    CREDENTIAL = cred_sri
)

CREATE EXTERNAL FILE FORMAT format_parquet
WITH
(
    FORMAT_TYPE = PARQUET
)

CREATE EXTERNAL TABLE gold.extsales
WITH
(
    LOCATION = 'extsales',
    DATA_SOURCE = source_gold,
    FILE_FORMAT = format_parquet
)
AS
SELECT * FROM gold.sales


CREATE EXTERNAL TABLE gold.extcustomers
WITH
(
    LOCATION = 'extcustomers',
    DATA_SOURCE = source_gold,
    FILE_FORMAT = format_parquet
)
AS
SELECT * FROM gold.customers

CREATE EXTERNAL TABLE gold.extcalendar
WITH
(
    LOCATION = 'extcalendar',
    DATA_SOURCE = source_gold,
    FILE_FORMAT = format_parquet
)
AS
SELECT * FROM gold.calendar



CREATE EXTERNAL TABLE gold.extTerritories
WITH
(
    LOCATION = 'extTerritories',
    DATA_SOURCE = source_gold,
    FILE_FORMAT = format_parquet
)
AS
SELECT * FROM gold.Territories

CREATE EXTERNAL TABLE gold.extReturns
WITH
(
    LOCATION = 'extReturns',
    DATA_SOURCE = source_gold,
    FILE_FORMAT = format_parquet
)
AS
SELECT * FROM gold.Returns


CREATE EXTERNAL TABLE gold.Products
WITH
(
    LOCATION = 'extProducts',
    DATA_SOURCE = source_gold,
    FILE_FORMAT = format_parquet
)
AS
SELECT * FROM gold.Products



CREATE EXTERNAL TABLE gold.extProduct_Subcategories
WITH
(
    LOCATION = 'extProduct_Subcategories',
    DATA_SOURCE = source_gold,
    FILE_FORMAT = format_parquet
)
AS
SELECT * FROM gold.Product_Subcategories



CREATE EXTERNAL TABLE gold.extProductCategories
WITH
(
    LOCATION = 'extProductCategories',
    DATA_SOURCE = source_gold,
    FILE_FORMAT = format_parquet
)
AS
SELECT * FROM gold.ProductCategories





