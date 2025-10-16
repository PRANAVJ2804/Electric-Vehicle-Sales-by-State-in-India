create database ecommerce;
use ecommerce;

Select * from ecommerce_furniture_dataset_2024;

ALTER TABLE ecommerce_furniture_dataset_2024
RENAME COLUMN `ï»¿"productTitle"` TO `productTitle`;

-- Count total number of entries
SELECT 
    COUNT(*) AS total_entries
FROM
    ecommerce_furniture_dataset_2024;

-- Average price of all items
SELECT 
    AVG(price) AS average_price
FROM
    ecommerce_furniture_dataset_2024;

-- Total units sold per product
SELECT 
    productTitle, SUM(sold) AS total_sold
FROM
    ecommerce_furniture_dataset_2024
GROUP BY productTitle
ORDER BY total_sold DESC;

-- Products with price greater than $100
SELECT 
    productTitle, price
FROM
    ecommerce_furniture_dataset_2024
WHERE
    price > 100;

-- Count of products by tagText category
SELECT 
    tagText, COUNT(*) AS count
FROM
    ecommerce_furniture_dataset_2024
GROUP BY tagText;

-- Top 5 best-selling products
SELECT 
    productTitle, sold
FROM
    ecommerce_furniture_dataset_2024
ORDER BY sold DESC
LIMIT 5;

-- Total units sold for 'Free shipping' products
SELECT 
    SUM(sold) AS total_sold_free_shipping
FROM
    ecommerce_furniture_dataset_2024
WHERE
    tagText = 'Free shipping';

