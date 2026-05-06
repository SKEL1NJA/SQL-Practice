SHOW databases;

CREATE DATABASE IF NOT EXISTS MAIT;

use MAIT;

CREATE Table IF NOT EXISTS departments(
    dept_id INT PRIMARY KEY,
    dept_name VARCHAR(255) NOT NULL,
    HOD VARCHAR(255)
);

DESCRIBE departments;

INSERT INTO departments(dept_id, dept_name, HOD)
VALUES(101, 'CSE', 'Prof. Namita Gupta');
INSERT INTO departments(dept_id, dept_name, HOD)
VALUES(102, 'IT', 'Ms. Bhoomi Gupta');
INSERT INTO departments(dept_id, dept_name, HOD)
VALUES(103, 'ECE', 'Prof. Sachin Gupta');
INSERT INTO departments(dept_id, dept_name, HOD)
VALUES(104, 'Mech.', 'Dr RK Choudhury');

SELECT * FROM departments;

CREATE Table IF NOT EXISTS students(
    stud_id INT PRIMARY KEY,
    stud_name VARCHAR(255),
    dept_id INT,

    Foreign Key (dept_id) REFERENCES departments(dept_id)
);

-- CREATE

INSERT INTO students(stud_id, stud_name, dept_id)
VALUES
(10, 'Uday', 101),
(69, 'Priya', 103),
(43, 'Chehak', 102);

-- READ

SELECT * FROM students; 

SELECT stud_name, stud_id FROM students; 

SELECT * FROM students WHERE dept_id = 102; 

SELECT * FROM departments ORDER BY dept_name;

SELECT * from departments LIMIT 3;

-- UPDATE

UPDATE departments
SET HOD ='Dr. Ashish Khanna'
WHERE dept_id = 104;

SELECT * FROM departments;

-- DELETE

DELETE FROM departments WHERE dept_id = 104;

SELECT * FROM departments;