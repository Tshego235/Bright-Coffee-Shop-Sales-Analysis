-- I want to see every column on my table
SELECT *
FROM workspace.default.coffee_shop;

=========================================
-- 1. Checking the Date Range
=========================================
-- They started collecting the data from 2023-01-01
SELECT MIN(transaction_date) AS min_date
FROM workspace.default.coffee_shop;

-- They last collected the data on 2023-06-30
SELECT MAX(transaction_date) AS latest_date
FROM workspace.default.coffee_shop;
--The duration of the data is 6 months

=========================================
-- 2. Checking the names of the different stores
=========================================
-- We have 3 stores and their names are : Lower Manhattan, Hell's Kitchen, Astoria
SELECT DISTINCT store_location
FROM workspace.default.coffee_shop;

-- Count the number of stores
SELECT COUNT(DISTINCT store_id) AS number_of_stores
FROM workspace.default.coffee_shop;

=========================================
-- 3. Checking products sold at our stores
=========================================
SELECT DISTINCT product_category
FROM workspace.default.coffee_shop;

SELECT DISTINCT product_detail
FROM workspace.default.coffee_shop;

SELECT DISTINCT product_category as category, product_detail as product_name
FROM workspace.default.coffee_shop;

=========================================
-- 4. Checking products prices
=========================================
SELECT min(unit_price) AS cheapest_price
FROM workspace.default.coffee_shop;

SELECT max(unit_price) AS expensive_price
FROM workspace.default.coffee_shop;

=========================================
-- 5. Checking the number of rows and sales
=========================================
SELECT COUNT(*) AS number_of_rows,
       COUNT(DISTINCT transaction_id) AS number_of_sales,
       COUNT(DISTINCT product_id) AS number_of_products,
       COUNT(DISTINCT store_id) AS number_of_stores
FROM workspace.default.coffee_shop

SELECT transaction_id,
      transaction_date,
      Dayname(transaction_date) AS Day_name,
      Monthname(transaction_date) AS Month_name,
      transaction_qty*unit_price AS revenue_per_tnx
FROM workspace.default.coffee_shop;

SELECT transaction_date,
      Dayname(transaction_date) AS Day_name,
      Monthname(transaction_date) AS Month_name,
      COUNT(DISTINCT transaction_id) AS Number_of_sales,
      SUM(transaction_qty*unit_price) AS revenue_per_day
FROM workspace.default.coffee_shop
GROUP BY transaction_date, Day_name, Month_name;

SELECT
-- Dates
      transaction_date AS purchase_date,
      Dayname(transaction_date) AS Day_name,
      Monthname(transaction_date) AS Month_name,
      Dayofmonth(transaction_date) AS day_of_month,

      CASE 
            WHEN Dayname(transaction_date) IN ('Sun','Sat') THEN 'Weekend'
            ELSE 'Weekday'
      END AS day_classifiction,

      --date_format(transaction_time, 'HH:mm:ss') AS purchase_time,
      CASE
            WHEN date_format(transaction_time, 'HH:mm:ss') BETWEEN '00:00:00' AND '11:59:59' THEN '01. Morning'
            WHEN date_format(transaction_time, 'HH:mm:ss') BETWEEN '12:00:00' AND '16:59:59' THEN '02. Afternoon'
            WHEN date_format(transaction_time, 'HH:mm:ss') >= '17:00:00' THEN '03. Evening'
      END AS time_buckets,

-- Counts of IDS
      COUNT(DISTINCT transaction_id) AS Number_of_sales,
      COUNT(DISTINCT product_id) AS number_of_products,
      COUNT(DISTINCT store_id) AS number_of_stores,
-- Revenue
      SUM(transaction_qty*unit_price) AS revenue_per_day,

      CASE
            WHEN revenue_per_day <=50 THEN '01. Low Spend'
            WHEN revenue_per_day BETWEEN 51 AND 100 THEN '02. Med Spend'
            ELSE '03. High Spend'
      END AS spend_bucket,

-- Categorical columns
      store_location,
      product_category,
      product_detail

FROM workspace.default.coffee_shop
GROUP BY transaction_date,
         Dayname(transaction_date),
         Monthname(transaction_date),
         Dayofmonth(transaction_date),

         CASE 
            WHEN Dayname(transaction_date) IN ('Sun','Sat') THEN 'Weekend'
            ELSE 'Weekday'
         END,

         CASE
            WHEN date_format(transaction_time, 'HH:mm:ss') BETWEEN '00:00:00' AND '11:59:59' THEN '01. Morning'
            WHEN date_format(transaction_time, 'HH:mm:ss') BETWEEN '12:00:00' AND '16:59:59' THEN '02. Afternoon'
            WHEN date_format(transaction_time, 'HH:mm:ss') >= '17:00:00' THEN '03. Evening'
         END,

         store_location,
         product_category,
         product_detail;
