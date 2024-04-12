USE fwrp;

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
VALUES ('Retailer C', 'retailerC@example.com', '4561237890', '789 Oak St, Village', 3, '2024-04-17', 15, 'Donation of canned vegetables');



