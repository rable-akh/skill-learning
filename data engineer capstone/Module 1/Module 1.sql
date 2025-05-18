Module 1

CREATE DATABASE sales;

SHOW DATABASES;

USE sales;

CREATE TABLE sale_data (
    product_id INT,
    customer_id VARCHAR(100) NOT NULL,
    price DECIMAL(10,2) NOT NULL,
    quantity INT NOT NULL,
    timestamp DATETIME NOT NULL
);

SHOW tables;

SELECT COUNT(*) FROM sale_data;

CREATE INDEX ts ON sale_data(`timestamp`);

SHOW INDEX FROM sale_data;


