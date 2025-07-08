use whos_records;

SELECT product_name, price, price - (SELECT AVG(price) FROM products) AS above_avg_by
FROM products;

SELECT product_name, price
FROM products
WHERE price > (SELECT AVG(price) FROM products);

SELECT user_name
FROM users
WHERE user_id = (
  SELECT user_id
  FROM orders
  GROUP BY user_id
  ORDER BY SUM(quantity) DESC
  LIMIT 1
);

SELECT u.user_name, stats.avg_quantity
FROM users u
JOIN (
  SELECT user_id, AVG(quantity) AS avg_quantity
  FROM orders
  GROUP BY user_id
) AS stats ON u.user_id = stats.user_id;

