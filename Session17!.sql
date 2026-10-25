CREATE TABLE Restaurant (
    id INT PRIMARY KEY,
    name VARCHAR(100),
    cuisine VARCHAR(50),
    location VARCHAR(100),
    average_rating DECIMAL(2,1)
);

INSERT INTO Restaurant VALUES
(1, 'Empire', 'North Indian', 'Koramangala', 4.2),
(2, 'Meghana Foods', 'Biryani', 'BTM', 4.5),
(3, 'Truffles', 'American', 'Koramangala', 4.3),
(4, 'A2B', 'South Indian', 'Whitefield', 4.0),
(5, 'Paradise', 'Biryani', 'Indiranagar', 4.1);


SELECT cuisine, COUNT(*) AS total_restaurants
FROM Restaurant
GROUP BY cuisine
ORDER BY total_restaurants DESC;


CREATE TABLE Review (
    id INT PRIMARY KEY,
    restaurant_id INT,
    user_name VARCHAR(100),
    rating DECIMAL(2,1),
    review_date DATE,
    FOREIGN KEY (restaurant_id) REFERENCES Restaurant(id)
);


INSERT INTO Review VALUES
(1, 1, 'Amit', 4.0, '2026-01-01'),
(2, 1, 'Riya', 5.0, '2026-01-02'),
(3, 2, 'Rahul', 4.0, '2026-01-03'),
(4, 2, 'Neha', 5.0, '2026-01-04'),
(5, 3, 'Karan', 4.0, '2026-01-05'),
(6, 3, 'Priya', 3.0, '2026-01-06'),
(7, 4, 'Jay', 4.0, '2026-01-07'),
(8, 4, 'Mira', 3.0, '2026-01-08'),
(9, 5, 'Dev', 5.0, '2026-01-09'),
(10, 5, 'Sara', 4.0, '2026-01-10');


SELECT
    Restaurant.name,
    Restaurant.cuisine,
    AVG(Review.rating) AS avg_review_rating
FROM Restaurant
JOIN Review
ON Restaurant.id = Review.restaurant_id
GROUP BY Restaurant.id, Restaurant.name, Restaurant.cuisine
ORDER BY avg_review_rating DESC;


SELECT
    name,
    cuisine,
    avg_review_rating,
    RANK() OVER (
        PARTITION BY cuisine
        ORDER BY avg_review_rating DESC
    ) AS restaurant_rank
FROM (
    SELECT
        Restaurant.name,
        Restaurant.cuisine,
        AVG(Review.rating) AS avg_review_rating
    FROM Restaurant
    JOIN Review
    ON Restaurant.id = Review.restaurant_id
    GROUP BY Restaurant.id, Restaurant.name, Restaurant.cuisine
) AS ratings;


