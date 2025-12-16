CREATE DATABASE GroceryShop;

USE GroceryShop;

CREATE TABLE products (
    product_id INT PRIMARY KEY,
    product_name VARCHAR(0),
    price INT
);

ALTER TABLE products ADD category VARCHAR(25);

TRUNCATE TABLE products;

DROP DATABASE GroceryShop;
