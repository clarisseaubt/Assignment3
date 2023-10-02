-- Create Users table
CREATE TABLE Users (
    id serial PRIMARY KEY,
    username VARCHAR(50) NOT NULL,
    email VARCHAR(100) UNIQUE NOT NULL,
    password VARCHAR(100) NOT NULL
);

-- Create Posts table
CREATE TABLE Posts (
    id serial PRIMARY KEY,
    title VARCHAR(255) NOT NULL,
    content TEXT,
    user_id INT REFERENCES Users(id)
);

-- Create Comments table
CREATE TABLE Comments (
    id serial PRIMARY KEY,
    text TEXT,
    user_id INT REFERENCES Users(id),
    post_id INT REFERENCES Posts(id)
);

-- Create Likes table
CREATE TABLE Likes (
    id serial PRIMARY KEY,
    user_id INT REFERENCES Users(id),
    post_id INT REFERENCES Posts(id)
);

