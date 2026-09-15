USE foodie_app;

CREATE TABLE Restaurants2 (
    id INT PRIMARY KEY,
    name VARCHAR(100),
    cuisine VARCHAR(100),
    rating DECIMAL(2,1),
    city VARCHAR(50)
);

INSERT INTO Restaurants2 (id, name, cuisine, rating, city) VALUES
(1, 'Spice Route', 'North Indian', 4.5, 'Ahmedabad'),
(2, 'The Pasta House', 'Italian', 4.2, 'Mumbai'),
(3, 'Biryani Junction', 'Biryani', 4.6, 'Hyderabad'),
(4, 'Chai & Co.', 'Cafe', 4.0, 'Bengaluru'),
(5, 'Dragon Wok', 'Chinese', 4.3, 'Delhi');

SELECT * FROM Restaurants2 WHERE rating > 4.0 AND city IN ('Ahmedabad', 'Surat');

SELECT * FROM Restaurants2 WHERE name LIKE 'Swa%';

SELECT * FROM Restaurants2 WHERE rating BETWEEN 3.5 AND 4.5;

SELECT * FROM Restaurants2 WHERE cuisine IN ('Chinese', 'Italian', 'South Indian');