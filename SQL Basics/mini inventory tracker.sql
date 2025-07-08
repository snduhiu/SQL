USE whos_records;

-- TRACK THE AMOUNT OF PRODUCTS LEFT IN STOCK WITH EACH ORDER MADE

ALTER TABLE products ADD COLUMN stock INT;

SET SQL_SAFE_UPDATES = 0;
UPDATE products SET stock = 100;
SET SQL_SAFE_UPDATES = 1;

UPDATE products
SET stock = stock - (SELECT quantity FROM orders WHERE order_id = 1)
WHERE product_id = (SELECT product_id FROM orders WHERE order_id = 1);

-- STOCK UPDATE

DROP TRIGGER IF EXISTS reduce_stock_after_order;

DELIMITER //
CREATE TRIGGER reduce_stock_after_order
AFTER INSERT ON orders
FOR EACH ROW
BEGIN
  UPDATE products
  SET stock = stock - NEW.quantity
  WHERE product_id = NEW.product_id;
END;
//
DELIMITER ;

SELECT product_name, stock FROM products;

SELECT * FROM products;

