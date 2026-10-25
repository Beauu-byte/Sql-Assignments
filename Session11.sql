SELECT * FROM Restaurants WHERE rating > (SELECT AVG(rating) FROM Restaurants);

SELECT User.user_name,(SELECT COUNT(*) FROM Orders WHERE Orders.user_id=User.user_id) AS total_Orders FROM Users ;

SELECT * FROM Movies WHERE movies_id IN (SELECT movie_id FROM Reviews where rating = 5);

SELECT Sellers.seller_name FROM Sellers  JOIN Products  ON Sellers.seller_id = Products.seller_id GROUP BY Sellers.seller_id, Sellers.seller_name
HAVING COUNT(DISTINCT Products.category_id) = (SELECT COUNT(*) FROM Categories);