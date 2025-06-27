USE whos_records;

SELECT user_id, order_date, COUNT(order_id) AS number_of_orders
FROM orders
GROUP BY order_date ORDER BY user_id;

SELECT SUM(p.price * o.quantity) AS total_sales
FROM orders o
JOIN products p ON o.product_id = p.product_id;

SELECT user_id, AVG(quantity) AS avg_quantity
FROM orders
GROUP BY user_id;

SELECT user_id, 
       MIN(quantity) AS smallest_order,
       MAX(quantity) AS largest_order
FROM orders
GROUP BY user_id;

SELECT user_id, COUNT(order_id) AS number_of_orders
FROM orders
GROUP BY user_id
HAVING number_of_orders > 2;

SELECT o.user_id, SUM(p.price * o.quantity) AS total_sales
FROM orders o
JOIN products p ON o.product_id = p.product_id
GROUP BY o.user_id;
