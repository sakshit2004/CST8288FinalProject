CREATE DATABASE fwrp;
USE fwrp;

CREATE TABLE inventory (
    item_id INT AUTO_INCREMENT PRIMARY KEY,
    item_name VARCHAR(255),
    quantity INT,
    price DECIMAL(10, 2),
    discounted_rate DECIMAL(5, 2),
    discounted_price DECIMAL(10, 2),
    purchase_amount DECIMAL(10, 2)
);


INSERT INTO inventory (item_name, quantity, price, discounted_rate, discounted_price, purchase_amount) 
VALUES ('Apple', 100, 1.99, 0.1, 1.79, 35.80);

INSERT INTO inventory (item_name, quantity, price, discounted_rate, discounted_price, purchase_amount) 
VALUES ('Banana', 150, 0.75, 0.05, 0.71, 21.30);

INSERT INTO inventory (item_name, quantity, price, discount_rate, discounted_price, purchase_amount) 
VALUES ('Orange', 120, 1.25, 0.15, 1.06, 26.50);

desc inventoryinventory;
