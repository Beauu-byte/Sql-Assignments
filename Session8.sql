USE Flipkart;

CREATE TABLE Orderss (
    order_id INT PRIMARY KEY AUTO_INCREMENT,
    user_id INT,
    payment_method VARCHAR(20),
    amount DECIMAL
);

INSERT INTO Orderss (user_id, payment_method, amount)
VALUES
(101, 'UPI', 250.00),
(102, 'Card', 450.00),
(101, 'Wallet', 150.00),
(103, 'COD', 500.00),
(104, 'UPI', 350.00),
(102, 'Card', 200.00),
(105, 'Wallet', 400.00),
(103, 'COD', 600.00);


SELECT payment_method,COUNT(*) AS total_orders FROM Orderss GROUP BY payment_method;

SELECT user_id,SUM(amount) as total_spend	FROM Orderss GROUP BY user_id;

SELECT payment_method , AVG(amount) AS AVG_AMOUNT FROM Orderss GROUP BY payment_method HAVING AVG(amount>300);

SELECT user_id FROM Orderss WHERE amount>300;

SELECT user_id, SUM(amount) FROM Orderss GROUP BY user_id HAVING SUM(amount) > 500;