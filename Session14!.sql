CREATE TABLE Orders (
    order_id INT PRIMARY KEY,
    user_id INT,
    order_date DATE,
    total_amount DECIMAL(10,2)
);

INSERT INTO Orders VALUES
(1, 101, '2026-01-01', 200),
(2, 101, '2026-01-03', 300),
(3, 101, '2026-01-05', 150),
(4, 102, '2026-01-02', 400),
(5, 102, '2026-01-04', 250),
(6, 103, '2026-01-01', 500),
(7, 103, '2026-01-06', 350);



SELECT order_id, user_id, order_date, total_amount,
LAG(total_amount) OVER (
    PARTITION BY user_id
    ORDER BY order_date
) AS previous_amount
FROM Orders;



SELECT order_id, user_id, order_date, total_amount,
LEAD(total_amount) OVER (
    PARTITION BY user_id
    ORDER BY order_date
) AS next_amount
FROM Orders;




SELECT order_id, user_id, order_date, total_amount,
SUM(total_amount) OVER (
    PARTITION BY user_id
    ORDER BY order_date
    ROWS BETWEEN UNBOUNDED PRECEDING AND CURRENT ROW
) AS running_total
FROM Orders;



SELECT order_id, user_id, order_date, total_amount,
AVG(total_amount) OVER (
    PARTITION BY user_id
    ORDER BY order_date
    ROWS BETWEEN 2 PRECEDING AND CURRENT ROW
) AS moving_avg
FROM Orders;



SELECT order_id, user_id, order_date, total_amount,
SUM(total_amount) OVER (
    PARTITION BY user_id
    ORDER BY order_date
    ROWS BETWEEN 2 PRECEDING AND CURRENT ROW
) /
COUNT(*) OVER (
    PARTITION BY user_id
    ORDER BY order_date
    ROWS BETWEEN 2 PRECEDING AND CURRENT ROW
) AS moving_avg
FROM Orders;