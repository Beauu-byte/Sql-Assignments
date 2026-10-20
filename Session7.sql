USE Flipkart;

CREATE TABLE Orders (
    order_id INT AUTO_INCREMENT PRIMARY KEY  ,
    user_name VARCHAR(100),
    total_amount DECIMAL(10,2),
    order_date DATE
);

INSERT INTO Orders (user_name,total_amount,order_date) VALUES  
('Aezaz', 2500.00, '2026-10-01'),
('Vinit', 1800.00, '2026-10-02'),
('Jahaz', NULL, '2026-10-03'),
('Priya', 3200.00, '2026-10-04'),
('Nancy', 1500.00, '2026-10-05');

SELECT user_name, COUNT(*) AS order_count FROM Orders  GROUP BY user_name;

SELECT AVG(total_amount) AS average_amount FROM Orders WHERE total_amount is not null;

SELECT MAX(total_amount) AS Highest ,MIN(total_amount) AS Lowest FROM Orders;

SELECT SUM(total_amount) AS total_sales FROM Orders WHERE total_amount is not null;