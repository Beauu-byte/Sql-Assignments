CREATE TABLE FoodOrders (
    order_id INT,
    restaurant_name VARCHAR(100),
    customer_name VARCHAR(100),
    order_amount DECIMAL(10,2),
    order_date DATE
);


CREATE TABLE TopSongs (
    song_id INT PRIMARY KEY,
    song_title VARCHAR(150),
    artist VARCHAR(100),
    streams BIGINT,
    release_date DATE
);


INSERT INTO TopSongs VALUES
(1, 'Blinding Lights', 'The Weeknd', 4000000000, '2019-11-29'),
(2, 'Shape of You', 'Ed Sheeran', 3800000000, '2017-01-06'),
(3, 'Someone You Loved', 'Lewis Capaldi', 3000000000, '2018-11-08'),
(4, 'Starboy', 'The Weeknd', 3000000000, '2016-09-22'),
(5, 'Perfect', 'Ed Sheeran', 2800000000, '2017-03-03');



SELECT customer_name, SUM(order_amount) AS total_spent
FROM FoodOrders
GROUP BY customer_name
ORDER BY total_spent DESC
LIMIT 3;



SELECT
    restaurant_name,
    COUNT(*) AS total_orders,
    SUM(order_amount) AS total_amount
FROM FoodOrders
GROUP BY restaurant_name
ORDER BY total_amount DESC;


SELECT 'Average Order Amount' AS kpi_name,
       AVG(order_amount) AS kpi_value
FROM FoodOrders

UNION ALL

SELECT 'Unique Customers',
       COUNT(DISTINCT customer_name)
FROM FoodOrders;


