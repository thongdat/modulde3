CREATE DATABASE IF NOT EXISTS student_management;
USE student_management;

CREATE TABLE Class (
    id INT PRIMARY KEY AUTO_INCREMENT,
    name VARCHAR(100)
);
CREATE TABLE Teacher (
    id INT PRIMARY KEY AUTO_INCREMENT,
    name VARCHAR(100),
    age INT,
    country VARCHAR(100)
);
SELECT * FROM Class;
SELECT * FROM Teacher;