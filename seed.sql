-- Insert sample data into Users table
INSERT INTO Users (username, email, password) VALUES
    ('john_doe', 'john@example.com', 'password123'),
    ('jane_smith', 'jane@example.com', 'secret456');

-- Insert sample data into Posts table
INSERT INTO Posts (title, content, user_id) VALUES
    ('First Post', 'This is the content of the first post.', 1),
    ('Second Post', 'Another post by John.', 1),
    ('Hello World', 'Jane's first post.', 2);

-- Insert sample data into Comments table
INSERT INTO Comments (text, user_id, post_id) VALUES
    ('Great post!', 2, 1),
    ('I agree with you.', 1, 2);

-- Insert sample data into Likes table
INSERT INTO Likes (user_id, post_id) VALUES
    (1, 1),
    (2, 1);


