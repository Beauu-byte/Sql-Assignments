USE music_streaming_app;

CREATE TABLE playlist(
	id int auto_increment primary key,
    song_name varchar(20),
    artist varchar(20),
    duration int
);

INSERT INTO playlist(song_name,artist,duration) VALUES ("I LOVE YOU SO","The Walters",160);

INSERT INTO playlist(song_name,artist,duration) VALUES ("SOFIA","Clairow",189);
INSERT INTO playlist(song_name,artist,duration) VALUES ("Guzarish","Javed Ali",300);
INSERT INTO playlist(song_name,artist,duration) VALUES ("AATE JAATE","Lata Mangeshwar",229);

UPDATE playlist SET artist="Clairo" WHERE id=2;

SELECT * FROM playlist;

DELETE FROM playlist WHERE duration<120;

UPDATE playlist SET song_name= CONCAT(song_name,"remix") where artist="Ap Dhillon" and duration>180 ;