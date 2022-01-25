DROP TABLE IF EXISTS users;
DROP TABLE IF EXISTS posts;
DROP TABLE IF EXISTS likes;
DROP TABLE IF EXISTS comments;
DROP TABLE IF EXISTS followers;

CREATE TABLE users (
  id INTEGER PRIMARY KEY AUTOINCREMENT,
  username TEXT,
  real_name TEXT,
  location TEXT
  );

CREATE TABLE posts (
  id INTEGER PRIMARY KEY AUTOINCREMENT,
  user_id INTEGER,
  image_file TEXT,
  caption TEXT,
  posted_time TEXT
  );

 CREATE TABLE likes (
  id INTEGER PRIMARY KEY AUTOINCREMENT,
  user_id INTEGER,
  post_id INTEGER
    ); 

CREATE TABLE comments (
  id INTEGER PRIMARY KEY AUTOINCREMENT,
  user_id INTEGER,
  post_id INTEGER,
  comment TEXT
    ); 

CREATE TABLE followers (
  id INTEGER PRIMARY KEY AUTOINCREMENT,
  follower_user_id INTEGER,
  followed_user_id INTEGER
    ); 