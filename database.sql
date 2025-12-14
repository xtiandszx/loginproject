CREATE DATABASE IF NOT EXISTS sample_db;
USE sample_db;


-- ============================
-- TABLE 1: users
-- ============================
CREATE TABLE users (
id INT AUTO_INCREMENT PRIMARY KEY,
username VARCHAR(50),
password VARCHAR(50),
fullname VARCHAR(100),
email VARCHAR(100),
role VARCHAR(50)
);


INSERT INTO users (username, password, fullname, email, role) VALUES
('user1','pass1','User One','u1@mail.com','member'),
('user2','pass2','User Two','u2@mail.com','member'),
('user3','pass3','User Three','u3@mail.com','member'),
('user4','pass4','User Four','u4@mail.com','member'),
('user5','pass5','User Five','u5@mail.com','member'),
('user6','pass6','User Six','u6@mail.com','member'),
('user7','pass7','User Seven','u7@mail.com','member'),
('user8','pass8','User Eight','u8@mail.com','member'),
('user9','pass9','User Nine','u9@mail.com','member'),
('user10','pass10','User Ten','u10@mail.com','member');


-- ============================
-- TABLE 2: activities
-- ============================
CREATE TABLE activities (
id INT AUTO_INCREMENT PRIMARY KEY,
user_id INT,
activity VARCHAR(100),
status VARCHAR(50),
created_at DATE,
updated_at DATE
);


INSERT INTO activities (user_id, activity, status, created_at, updated_at) VALUES
(1,'Login','Completed','2024-01-01','2024-01-01'),
(2,'Logout','Completed','2024-01-02','2024-01-02'),
(3,'Viewed page','Completed','2024-01-03','2024-01-03'),
(4,'Uploaded file','Completed','2024-01-04','2024-01-04'),
(5,'Edited profile','Completed','2024-01-05','2024-01-05'),
(6,'Login','Completed','2024-01-06','2024-01-06'),
(7,'Error attempt','Failed','2024-01-07','2024-01-07'),
(8,'Login','Completed','2024-01-08','2024-01-08'),
(9,'Logout','Completed','2024-01-09','2024-01-09'),
(10,'Viewed page','Completed','2024-01-10','2024-01-10');


-- ============================
-- TABLE 3: logs
-- ============================
CREATE TABLE logs (
id INT AUTO_INCREMENT PRIMARY KEY,
level VARCHAR(20),
message VARCHAR(200),
user_id INT,
timestamp DATETIME,
ip_address VARCHAR(50)
);


INSERT INTO logs (level, message, user_id, timestamp, ip_address) VALUES
('INFO','User logged in',1,'2024-01-01 10:00:00','127.0.0.1'),
('INFO','Page viewed',2,'2024-01-02 11:00:00','127.0.0.1'),
('ERROR','Invalid login',3,'2024-01-03 12:00:00','127.0.0.1'),
('INFO','User logged out',4,'2024-01-04 13:00:00','127.0.0.1'),
('INFO','Profile updated',5,'2024-01-05 14:00:00','127.0.0.1'),
('WARNING','Suspicious activity',6,'2024-01-06 15:00:00','127.0.0.1'),
('INFO','Login success',7,'2024-01-07 16:00:00','127.0.0.1'),
('INFO','Settings changed',8,'2024-01-08 17:00:00','127.0.0.1'),
('ERROR','Page error',9,'2024-01-09 18:00:00','127.0.0.1'),
('INFO','User logged in',10,'2024-01-10 19:00:00','127.0.0.1');