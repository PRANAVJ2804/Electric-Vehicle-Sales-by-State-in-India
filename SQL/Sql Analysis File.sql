create database electric_vehicle;
use electric_vehicle;

select * from `electric vehicle sales by state in india`;

# Total EV Sales by State
SELECT 
    State, SUM(EV_Sales_Quantity) AS total_sales
FROM
    `electric vehicle sales by state in india`
GROUP BY State
ORDER BY total_sales DESC;

# Yearly EV Sales Trend
SELECT 
    Year, SUM(EV_Sales_Quantity) AS yearly_sales
FROM
    `electric vehicle sales by state in india`
GROUP BY Year
ORDER BY Year;

# Sales by Vehicle Class
SELECT 
    Vehicle_Class, SUM(EV_Sales_Quantity) AS class_sales
FROM
    `electric vehicle sales by state in india`
GROUP BY Vehicle_Class
ORDER BY class_sales DESC;

# Monthly EV Sales for a Given Year 
SELECT 
    Month_Name, SUM(EV_Sales_Quantity) AS monthly_sales
FROM
    `electric vehicle sales by state in india`
WHERE
    Year = 2023
GROUP BY Month_Name
ORDER BY monthly_sales DESC;

# Top 5 States for EV Sales in a Specific Year
SELECT 
    State, SUM(EV_Sales_Quantity) AS sales
FROM
    `electric vehicle sales by state in india`
WHERE
    Year = 2017
GROUP BY State
ORDER BY sales DESC
LIMIT 5;

# Sales Distribution by Vehicle Category per State
SELECT 
    State, Vehicle_Category, SUM(EV_Sales_Quantity) AS cat_sales
FROM
    `electric vehicle sales by state in india`
GROUP BY State , Vehicle_Category
ORDER BY State , cat_sales DESC;




