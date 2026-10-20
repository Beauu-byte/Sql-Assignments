CREATE DATABASE Flipkart;

USE Flipkart;

CREATE TABLE products (
    product_id INT PRIMARY KEY,
    product_name VARCHAR(50),
    price DECIMAL
);

INSERT INTO products VALUES
(1, 'Headphones', 2500),
(2, 'Laptop', 55000),
(3, 'Mobile', 150000),
(4, 'Charger', 999),
(5, 'Tablet', 18000);

SELECT * FROM products ORDER BY price ASC;

SELECT * FROM products ORDER BY price DESC LIMIT 5 ;

SELECT * FROM movies ORDER BY release_year DESC;

SELECT * FROM movies ORDER BY rating DESC;

SELECT * FROM restaurants ORDER BY restaurant_name ASC;

SELECT * FROM songs ORDER BY play_count DESC , recently_addedsong DESC LIMIT 3;