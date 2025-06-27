USE whos_records;

INSERT INTO users (name, email, location, phone) 
VALUES 
('John Mwangi', 'john.mwangi@example.com', 'Nairobi', '+254712345678'),
('Grace Wanjiku', 'grace.wanjiku@example.com', 'Mombasa', '+254734567890'),
('Brian Otieno', 'brian.otieno@example.com', 'Kisumu', '+254701234567'),
('Mary Njeri', 'mary.njeri@example.com', 'Eldoret', '+254745678901'),
('Kevin Kiprotich', 'kevin.kiprotich@example.com', 'Nakuru', '+254798765432'),
('Faith Achieng', 'faith.achieng@example.com', 'Kakamega', '+254711223344'),
('Peter Kamau', 'peter.kamau@example.com', 'Thika', '+254722334455'),
('Linda Chebet', 'linda.chebet@example.com', 'Kericho', '+254733445566'),
('Samuel Njuguna', 'samuel.njuguna@example.com', 'Naivasha', '+254744556677'),
('Cynthia Wafula', 'cynthia.wafula@example.com', 'Kitale', '+254755667788'),
('George Omondi', 'george.omondi@example.com', 'Kisii', '+254766778899'),
('Anne Wambui', 'anne.wambui@example.com', 'Machakos', '+254777889900'),
('David Kiplangat', 'david.kiplangat@example.com', 'Nanyuki', '+254788990011'),
('Irene Mwende', 'irene.mwende@example.com', 'Meru', '+254799001122'),
('Eric Mutiso', 'eric.mutiso@example.com', 'Embu', '+254710112233');

SELECT * FROM users;
SELECT DISTINCT location FROM users;
SELECT * FROM users WHERE name LIKE 'M%';
SELECT * FROM users WHERE location IN ('Nairobi', 'Mombasa', 'Kisumu');
SELECT * FROM users WHERE location IS NULL;

ALTER TABLE users DROP COLUMN created_at;

INSERT INTO products (product_name, price) VALUES
('Smartphone', 25000.00),
('Laptop', 65000.00),
('Wireless Earbuds', 4500.00),
('Smartwatch', 8000.00),
('Bluetooth Speaker', 3500.00),
('Tablet', 30000.00),
('Power Bank', 1500.00),
('External Hard Drive', 7000.00),
('Gaming Console', 50000.00),
('Desktop Monitor', 18000.00),
('Keyboard', 2500.00),
('Mouse', 1200.00),
('Router', 4000.00),
('Printer', 10000.00),
('Webcam', 3500.00);

SELECT * FROM products;

SELECT * FROM products WHERE price > 10000;
SELECT * FROM products WHERE price BETWEEN 5000 AND 30000;
SELECT * FROM products ORDER BY price DESC;
SELECT * FROM products ORDER BY price ASC LIMIT 5;
-- skip first three rows and display next five
SELECT * FROM products ORDER BY price ASC LIMIT 5 OFFSET 3;

INSERT INTO orders (user_id, product_id, quantity, order_date) VALUES
(1, 3, 2, '2025-04-10 14:23:00'),
(2, 5, 1, '2025-04-18 09:15:00'),
(3, 1, 3, '2025-04-20 16:45:00'),
(4, 7, 2, '2025-04-25 11:12:00'),
(5, 2, 1, '2025-05-02 08:30:00'),
(6, 9, 4, '2025-05-05 19:47:00'),
(7, 4, 2, '2025-05-09 10:05:00'),
(8, 6, 1, '2025-05-12 13:22:00'),
(9, 8, 2, '2025-05-16 17:33:00'),
(10, 10, 3, '2025-05-18 12:00:00'),
(11, 11, 2, '2025-05-20 09:50:00'),
(12, 12, 1, '2025-05-23 14:25:00'),
(13, 13, 2, '2025-05-25 15:15:00'),
(14, 14, 3, '2025-05-28 11:45:00'),
(15, 15, 1, '2025-05-30 16:30:00'),
(2, 1, 2, '2025-06-01 10:00:00'),
(3, 5, 3, '2025-06-02 11:30:00'),
(4, 3, 1, '2025-06-03 09:10:00'),
(5, 7, 2, '2025-06-04 13:40:00'),
(6, 2, 1, '2025-06-05 15:00:00'),
(7, 9, 2, '2025-06-06 16:20:00'),
(8, 4, 3, '2025-06-07 08:45:00'),
(9, 6, 1, '2025-06-08 14:15:00'),
(10, 8, 2, '2025-06-09 12:05:00'),
(11, 10, 3, '2025-06-10 11:25:00'),
(12, 12, 1, '2025-06-11 09:35:00'),
(13, 14, 2, '2025-06-12 17:00:00'),
(14, 15, 1, '2025-06-13 13:55:00'),
(15, 11, 3, '2025-06-14 16:40:00'),
(1, 13, 2, '2025-06-15 10:50:00');

SELECT * FROM orders;
