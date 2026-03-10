-- Create Database
CREATE DATABASE logdb;
USE logdb;

-- Create Students Table
CREATE TABLE students(
id INT PRIMARY KEY,
name VARCHAR(50),
department VARCHAR(20)
);

-- Create Log Table
CREATE TABLE activity_log(
log_id INT AUTO_INCREMENT PRIMARY KEY,
action_type VARCHAR(20),
student_id INT,
action_time DATETIME,
FOREIGN KEY (student_id) REFERENCES students(id)
);

-- Create Trigger
CREATE TRIGGER log_insert
AFTER INSERT ON students
FOR EACH ROW
INSERT INTO activity_log(action_type,student_id,action_time)
VALUES('INSERT',NEW.id,NOW());

-- Insert Data
INSERT INTO students VALUES
(1,'Ravi','CSE'),
(2,'Priya','ECE');

-- Create View
CREATE VIEW daily_report AS
SELECT action_type,student_id,DATE(action_time) AS activity_date
FROM activity_log;

-- Show Report
SELECT * FROM daily_report;