CREATE DATABASE foodie_app;
USE foodie_app;

CREATE TABLE restaurants (
	id int auto_increment primary key,
    name varchar(100),
    cuisine varchar(50),
    ratings decimal,
    location varchar(100)
);


CREATE TABLE users(
	user_id int auto_increment primary key,
    username varchar(20),
    email varchar(20),
    phone_number int,
    created_at DATETIME DEFAULT CURRENT_TIMESTAMP
);