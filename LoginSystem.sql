CREATE DATABASE logindb;

USE logindb;

CREATE TABLE users (
    username VARCHAR(50) PRIMARY KEY,
    password VARCHAR(50) NOT NULL
);

INSERT INTO users VALUES
('admin', '1234'),
('charmi', 'abcd');```sql
