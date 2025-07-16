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
    country VARCHAR(100),
    class_id int,
    FOREIGN key (class_id) REFERENCES Class(id)
);

drop table Teacher;
SELECT * FROM Class;

SELECT * FROM Teacher;


ALTER TABLE Class ADD start_date DATE;


INSERT INTO Class (name, start_date) VALUES 
('Lớp A', '2025-12-01'),
('Lớp B', '2025-11-20'),
('Lớp C', '2025-12-15'),
('Lớp D', '2025-10-05');

SELECT * FROM Teacher
where name like 'h%';

SELECT * FROM Class
where month(start_date) = 12;

update Teacher
set class_id = 2 
where LOWER(TRIM(name)) = 'hung';

SELECT * from Teacher
 WHERE LOWER(TRIM(name)) = 'hung';
 
 
 alter table Teacher add mark int;
 
SELECT * FROM Teacher
order by mark desc, name asc;





