-- Query 1: Select all posts and their authors
SELECT Posts.title, Users.username
FROM Posts
INNER JOIN Users ON Posts.user_id = Users.id;

-- Query 2: Select comments on a specific post
SELECT Comments.text, Users.username
FROM Comments
INNER JOIN Users ON Comments.user_id = Users.id
WHERE Comments.post_id = 1;

-- Query 3: Count likes for each post
SELECT Posts.title, COUNT(Likes.id) AS like_count
FROM Posts
LEFT JOIN Likes ON Posts.id = Likes.post_id
GROUP BY Posts.title;

-- Query 4: Find posts with more than 2 comments
SELECT Posts.title
FROM Posts
INNER JOIN (
    SELECT post_id, COUNT(*) AS comment_count
    FROM Comments
    GROUP BY post_id
) AS CommentCounts ON Posts.id = CommentCounts.post_id
WHERE CommentCounts.comment_count > 2;

