CREATE DATABASE IF NOT EXISTS bookflow_db;
USE bookflow_db;
CREATE TABLE books ( 
book_id INT AUTO_INCREMENT PRIMARY KEY, 
title VARCHAR(255) NOT NULL, 
isbn VARCHAR(13)  NOT NULL UNIQUE, 
published_year INT, 
CONSTRAINT chk_published_year CHECK (published_year < 2027) 
); 
CREATE TABLE members ( 
member_id  INT AUTO_INCREMENT PRIMARY KEY, 
full_name  VARCHAR(100) NOT NULL, 
email VARCHAR(150) NOT NULL UNIQUE 
);
CREATE TABLE students (
stu_name VARCHAR(100),
stu_id INT AUTO_INCREMENT PRIMARY KEY,
stu_email VARCHAR(100) NOT NULL UNIQUE
);

DESCRIBE books;
DESCRIBE members;
DESCRIBE students;

INSERT INTO books (title, isbn, published_year) VALUES 
('The Alchemist',  '9780061122415', 1988), 
('Clean Code',     '9780132350884', 2008), 
('Atomic Habits',  '9780735211292', 2018); 
INSERT INTO members (full_name, email) VALUES 
('Anil Kumar',   'anil.kumar@example.com'), 
('Priya Sharma', 'priya.sharma@example.com'), 
('Ravi Verma',   'ravi.verma@example.com'); 
INSERT INTO students (stu_name, stu_email) VALUES
('Bhaarathi', 'bhaarathiyasam@klh.edu.in'),
('Geeta', 'geetha@klh.edu.in');
SELECT * FROM books;
SELECT * FROM members;
SELECT * FROM students;
/* Test Case 1*/
INSERT INTO books (title, isbn, published_year)  
VALUES ('Fake Copy', '9780061122415', 2000); 
/* Test Case 2*/
INSERT INTO books (title, isbn, published_year) 
VALUES (NULL, '9999999999999', 2010); 
/* Test Case 3*/
INSERT INTO books (title, isbn, published_year) 
VALUES ('Time Traveler', '8888888888888', 2030);
/* Test Case 4*/
INSERT INTO members (full_name, email) 
VALUES ('Anil Clone', 'anil.kumar@example.com'); 