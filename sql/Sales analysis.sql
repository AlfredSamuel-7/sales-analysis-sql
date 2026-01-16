CREATE DATABASE IF NOT EXISTS sales_analysis;
USE sales_analysis;
DROP TABLE IF EXISTS sales;
CREATE TABLE sales (
    ship_mode VARCHAR(50),
    segment VARCHAR(50),
    country VARCHAR(50),
    city VARCHAR(100),
    state VARCHAR(100),
    postal_code INT,
    region VARCHAR(50),
    category VARCHAR(50),
    sub_category VARCHAR(50),
    sales DECIMAL(10,2),
    quantity INT,
    discount DECIMAL(4,2),
    profit DECIMAL(10,2)
);
SHOW TABLES;
SELECT COUNT(*) AS total_rows FROM sales;
SELECT * FROM sales LIMIT 5;
SELECT ROUND(SUM(sales), 2) AS total_sales
FROM sales;
SELECT region, ROUND(SUM(sales), 2) AS region_sales
FROM sales
GROUP BY region
ORDER BY region_sales DESC;
SELECT category, ROUND(SUM(profit), 2) AS total_profit
FROM sales
GROUP BY category
ORDER BY total_profit DESC;
SELECT sub_category, ROUND(SUM(sales), 2) AS total_sales
FROM sales
GROUP BY sub_category
ORDER BY total_sales DESC
LIMIT 10;
SELECT discount, ROUND(AVG(profit), 2) AS avg_profit
FROM sales
GROUP BY discount
ORDER BY discount;

