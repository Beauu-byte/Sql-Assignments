CREATE TABLE Influencers (
    id INT PRIMARY KEY,
    name VARCHAR(100)
);

CREATE TABLE Collaborations (
    id INT PRIMARY KEY,
    influencer1_id INT,
    influencer2_id INT,
    collab_date DATE
);


-- !!-- 
SELECT
    I1.name AS influencer,
    I2.name AS partner,
    C.collab_date
FROM Influencers I1
LEFT JOIN Collaborations C
ON I1.id = C.influencer1_id
LEFT JOIN Influencers I2
ON C.influencer2_id = I2.id

UNION

SELECT
    I2.name AS influencer,
    I1.name AS partner,
    C.collab_date
FROM Collaborations C
JOIN Influencers I1
ON C.influencer1_id = I1.id
JOIN Influencers I2
ON C.influencer2_id = I2.id;

-- !!--

SELECT
    P.playlist_name AS playlist,
    Parent.playlist_name AS parent_playlist
FROM Playlists P
LEFT JOIN Playlists Parent
ON P.parent_playlist_id = Parent.id;

SELECT
    Users.username,
    Orders.order_date,
    Payments.amount
FROM Users
LEFT JOIN Orders
ON Users.id = Orders.user_id
LEFT JOIN Payments
ON Orders.id = Payments.order_id;


SELECT DISTINCT
    Restaurants.name,
    Restaurants.location
FROM Restaurants
JOIN Reviews
ON Restaurants.id = Reviews.restaurant_id;



SELECT Products.product_name, Categories.category_name
FROM Products
JOIN Categories
ON Products.category_id = Categories.id;
-- id are always faster to compare than text -- 

SELECT Products.product_name, Categories.category_name
FROM Products
JOIN Categories
ON Products.category_name = Categories.category_name;
