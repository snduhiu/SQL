use whos_records;

SELECT o.order_id, u.user_name, p.product_name, o.quantity, o.order_date
FROM orders o
INNER JOIN users u ON o.user_id = u.user_id
INNER JOIN products p ON o.product_id = p.product_id;

SELECT u.user_id, u.user_name, o.order_id, o.product_id, o.quantity
FROM users u
LEFT JOIN orders o ON u.user_id = o.user_id;

SELECT o.order_id, u.user_name, o.product_id, o.quantity
FROM orders o
RIGHT JOIN users u ON o.user_id = u.user_id;

SELECT u.user_id, o.order_id, u.user_name, o.product_id, o.quantity
FROM orders o
JOIN users u USING (user_id)
ORDER BY user_id;

SELECT u.user_name AS customer, p.product_name, o.quantity, o.order_date
FROM orders o
JOIN users u ON o.user_id = u.user_id
JOIN products p ON o.product_id = p.product_id;

SELECT a.user_name AS user_a, b.user_name AS user_b, a.location
FROM users a
JOIN users b ON a.location = b.location
WHERE a.user_id > b.user_id;

-- Users with or without orders (LEFT)
SELECT u.user_id, u.user_name, o.order_id
FROM users u
LEFT JOIN orders o ON u.user_id = o.user_id

UNION

-- Orders without matching users (RIGHT)
SELECT u.user_id, u.user_name, o.order_id
FROM orders o
RIGHT JOIN users u ON u.user_id = o.user_id;

SELECT u.user_name, p.product_name
FROM users u
CROSS JOIN products p;

SELECT u.user_id, u.user_name
FROM users u
LEFT JOIN orders o ON u.user_id = o.user_id
WHERE o.order_id IS NULL;
