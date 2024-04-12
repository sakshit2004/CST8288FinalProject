USE fwrp;
CREATE TABLE register(name VARCHAR(100), email VARCHAR(100), password VARCHAR(100), Type VARCHAR(100) );
CREATE TABLE login(email VARCHAR(100), password VARCHAR(100) );
CREATE TABLE feedback(person_name VARCHAR(100), email VARCHAR(100), item_id VARCHAR(100), feedback VARCHAR(100), rating VARCHAR(50) );

CREATE TABLE INVENTORY (
    Inventory_ID INT  PRIMARY KEY,
    Retailer_ID INT NOT NULL,
    Item_Type VARCHAR(64),
    Name VARCHAR(255),
    Expiration_Date DATE NOT NULL,
    Quantity INT NOT NULL,
    Discounted_Price DECIMAL(10,2) NOT NULL,
    Surplus BOOLEAN NOT NULL,
    FOREIGN KEY (Retailer_ID) REFERENCES RETAILERS(Retailer_ID)
);

CREATE TABLE RETAILERS (
    Retailer_ID INT AUTO_INCREMENT PRIMARY KEY,
    username VARCHAR(255) UNIQUE,
    name VARCHAR(255),
    password VARCHAR(255)
);

INSERT INTO INVENTORY (Inventory_ID, Retailer_ID, Item_Type, Name, Expiration_Date, Quantity, Discounted_Price, Surplus) VALUES
(1,1, 'Electronics', 'Smartphone', '2024-12-31', 100, 799.99, true),
(2,2, 'Clothing', 'T-shirt', '2024-06-30', 50, 19.99, false),
(3,3,'Electronics', 'Laptop', '2024-11-30', 50, 1299.99, true),
(4,4,'Grocery', 'Cereal', '2024-09-30', 200, 4.99, false);

CREATE TABLE donations (
    donation_id INT AUTO_INCREMENT PRIMARY KEY,
    retailer_name VARCHAR(255),
    retailer_email VARCHAR(255),
    retailer_contact VARCHAR(20),
    retailer_address VARCHAR(255),
    item_id INT,  
    donation_date DATE,
    donation_quantity INT,
    donation_description VARCHAR(255)
);



INSERT INTO donations (retailer_name, retailer_email, retailer_contact, retailer_address, item_id, donation_date, donation_quantity, donation_description) 
VALUES ('Retailer A', 'retailerA@example.com', '1234567890', '123 Main St, City', 1, '2024-04-15', 10, 'Donation of canned goods');

INSERT INTO donations (retailer_name, retailer_email, retailer_contact, retailer_address, item_id, donation_date, donation_quantity, donation_description) 
VALUES ('Retailer B', 'retailerB@example.com', '9876543210', '456 Elm St, Town', 2, '2024-04-16', 20, 'Donation of rice and pasta');

INSERT INTO donations (retailer_name, retailer_email, retailer_contact, retailer_address, item_id, donation_date, donation_quantity, donation_description) 
VALUES ('Retailer C', 'retailerC@example.com', '4561237890', '789 Oak St, Village', 3, '2024-04-17', 15, 'Donation of canned vegetables');


-- Insert data into the RETAILERS table
INSERT INTO retailers (username, name, password) VALUES
('user1', 'John Doe', 'password1'),
('user2', 'Jane Smith', 'password2'),
('user3', 'Alice Johnson', 'password3');


