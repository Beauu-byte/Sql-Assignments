CREATE DATABASE NEW;
USE NEW;

CREATE TABLE restaurants (
    id INT PRIMARY KEY AUTO_INCREMENT,
    name VARCHAR(100),
    city VARCHAR(50)
);



INSERT INTO restaurants (name, city)
VALUES
('Pizza Palace', 'Ahmedabad'),
('Burger Hub', 'Mumbai'),
('Spice Garden', 'Delhi');

CREATE TABLE dishes (
    id INT PRIMARY KEY AUTO_INCREMENT,
    restaurant_id INT,
    dish_name VARCHAR(100),
    price DECIMAL,
    FOREIGN KEY (restaurant_id) REFERENCES restaurants(id)
);

INSERT INTO dishes (restaurant_id, dish_name, price)
VALUES
(1, 'Margherita Pizza', 250),
(1, 'Farmhouse Pizza', 350),
(1, 'Garlic Bread', 120),
(2, 'Veg Burger', 150),
(2, 'Cheese Burger', 220),
(3, 'Paneer Tikka', 280),
(3, 'Veg Biryani', 200),
(3, 'Butter Naan', 40);

SELECT dishes.dish_name, dishes.price, restaurants.name AS restaurant_name, restaurants.city 
FROM restaurants INNER JOIN dishes ON restaurants.id = dishes.restaurant_id ;

SELECT restaurants.name AS restaurant_name, restaurants.city, dishes.dish_name, dishes.price
FROM restaurants LEFT JOIN dishes ON restaurants.id = dishes.restaurant_id;

SELECT dishes.dish_name, dishes.price, restaurants.name AS restaurant_name, restaurants.city
FROM restaurants RIGHT JOIN dishes ON restaurants.id = dishes.restaurant_id;


SELECT playlist.playlist_name,songs.song_name FROM playlist LEFT JOIN songs ON playlist.playlist_id = songs.song_id;