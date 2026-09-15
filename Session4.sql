use music_streaming_app;

CREATE TABLE Music_playlist(
	id int auto_increment primary key,
    song_name varchar(20),
    artist varchar(20),
    genre varchar(20),
    duration int
);

INSERT INTO Music_playlist(song_name,artist,genre,duration) VALUES ("I LOVE YOU SO","The Walters","indie pop",160);
INSERT INTO Music_playlist(song_name,artist,genre,duration) VALUES ("SOFIA","Clairo","indie pop",189);
INSERT INTO Music_playlist(song_name,artist,genre,duration) VALUES ("Guzarish","Javed Ali","romantic",300);
INSERT INTO Music_playlist(song_name,artist,genre,duration) VALUES ("AATE JAATE","Lata Mangeshwar","romantic",229);

SELECT * FROM Music_playlist;

SELECT song_name,artist FROM Music_playlist LIMIT 3;

SELECT DISTINCT restaurant FROM FoodOrders;

SELECT food_item AS "Dish" , order_date AS "Date Ordered" FROM FoodOrders;

SELECT DISTINCT food_item,restaurant FROM FoodOrders LIMIT 2;