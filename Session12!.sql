WITH TopProducts AS (
    SELECT *
    FROM Products
    WHERE rating > 4.5
)
SELECT * FROM TopProducts;


SELECT * FROM Restaurants WHERE restaurant_id IN (
    SELECT restaurant_id
    FROM Restaurants
    WHERE city = 'Ahmedabad'
    AND delivery_charge < 50
);


WITH CheapRestaurants AS (
    SELECT *
    FROM Restaurants
    WHERE city = 'Ahmedabad'
    AND delivery_charge < 50
)
SELECT * FROM CheapRestaurants;


-- !!-- 
WITH TopUsers AS (
    SELECT username, followers
    FROM Users
    ORDER BY followers DESC
    LIMIT 3
),
TopPosts AS (
    SELECT post_id, likes
    FROM Posts
    ORDER BY likes DESC
    LIMIT 3
)
SELECT 'User' AS type, username AS name, followers AS count
FROM TopUsers

UNION ALL

SELECT 'Post' AS type, post_id AS name, likes AS count
FROM TopPosts;
-- !!-- 

-- !! --
WITH RECURSIVE Dates AS (
    SELECT CURDATE() AS date

    UNION ALL

    SELECT DATE_ADD(date, INTERVAL 1 DAY)
    FROM Dates
    WHERE date < DATE_ADD(CURDATE(), INTERVAL 6 DAY)
)
SELECT date FROM Dates;
-- !!-- 


WITH PopularUsers AS (
    SELECT *
    FROM Users
    WHERE followers > 1000
)
SELECT * FROM PopularUsers;