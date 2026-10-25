SELECT artist_name, COUNT(*) AS total_songs
FROM songs
GROUP BY artist_name
HAVING COUNT(*) > 3;


SELECT users.username, SUM(orders.amount) AS total_amount
FROM users
JOIN orders
ON users.user_id = orders.user_id
GROUP BY users.username;


SELECT name, rating
FROM restaurants
WHERE rating > (
    SELECT AVG(rating)
    FROM restaurants
);


SELECT
    user_id,
    transaction_date,
    amount,
    SUM(amount) OVER (
        PARTITION BY user_id
        ORDER BY transaction_date
    ) AS running_total
FROM transactions;


SELECT product_name, price
FROM products
WHERE category = 'Mobiles'
AND price < 20000;