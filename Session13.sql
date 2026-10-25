CREATE TABLE Playlists (
    id INT PRIMARY KEY,
    user_id INT,
    playlist_name VARCHAR(100),
    total_likes INT
);

INSERT INTO Playlists VALUES
(1, 101, 'Chill Vibes', 500),
(2, 101, 'Workout Mix', 800),
(3, 101, 'Sad Songs', 300),
(4, 102, 'Party Hits', 900),
(5, 102, 'Romantic Songs', 600),
(6, 102, 'Lo-Fi Music', 400),
(7, 103, 'Rock Classics', 700),
(8, 103, 'Pop Hits', 500);



SELECT playlist_name, total_likes,
ROW_NUMBER() OVER (ORDER BY total_likes DESC) AS row_num
FROM Playlists;




SELECT playlist_name, user_id, total_likes,
RANK() OVER (ORDER BY total_likes DESC) AS playlist_rank
FROM Playlists;



SELECT playlist_name, user_id, total_likes,
DENSE_RANK() OVER (
    PARTITION BY user_id
    ORDER BY total_likes DESC
) AS playlist_rank
FROM Playlists;



SELECT *
FROM (
    SELECT playlist_name, user_id, total_likes,
    ROW_NUMBER() OVER (
        PARTITION BY user_id
        ORDER BY total_likes DESC
    ) AS rn
    FROM Playlists
) AS ranked
WHERE rn <= 2;

