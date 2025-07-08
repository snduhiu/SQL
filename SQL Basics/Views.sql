use whos_records;

CREATE VIEW monthly_sales_summary AS
SELECT 
    DATE_FORMAT(order_date, '%Y-%m') AS month,
    SUM(quantity) AS total_items_sold,
    COUNT(order_id) AS total_orders
FROM orders
GROUP BY month;

SELECT * FROM monthly_sales_summary;

DROP VIEW IF EXISTS monthly_sales_summary;

CREATE OR REPLACE VIEW monthly_sales_summary AS
SELECT 
    DATE_FORMAT(order_date, '%Y-%m') AS month,
    SUM(quantity) AS total_items_sold,
    COUNT(order_id) AS total_orders,
    COUNT(DISTINCT user_id) AS unique_customers
FROM orders
GROUP BY month;
