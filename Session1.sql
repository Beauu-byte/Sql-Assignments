CREATE DATABASE music_streaming_app;
USE music_streaming_app;

CREATE TABLE  playlists(
	playlist_id int auto_increment primary key ,
    p_name varchar(40) ,
    created_by varchar(30)
);

INSERT INTO playlists(p_name,created_by) VALUES ("Bollywood hits","Arijit");
INSERT INTO playlists(p_name,created_by) VALUES ("Chill Vibes","Karan");
INSERT INTO playlists(p_name,created_by) VALUES ("Workout Mix","Sidhu");

SELECT * FROM playlists;

SELECT * FROM playlists WHERE created_by="Amit";

-- In SQL, a table is the entire container that holds your data, while columns
-- define the specific categories of information, and rows contain the actual data entries 