CREATE DATABASE aggregates;
USE aggregates;

CREATE TABLE student(
    rollno INT PRIMARY KEY,
    name VARCHAR(255),
    marks INT(100),
    grade VARCHAR(255),
    city VARCHAR(255)
);
INSERT INTO student(rollno, name, marks, grade, city)
VALUES
(101, "Anil", 78, "C", "Pune"),
(102, "Bhumika", 93, "A", "Mumbai"),
(103, "Chetan", 85, "B", "Mumbai"),
(104, "Dhruv", 96, "A", "Delhi"),
(105, "Emanuel", 12, "F", "Delhi"),
(106, "Farah", 82, "B", "Delhi");


-- Aggregate Functions - COUNT()
                 --    - MAX()
                 --    - MIN()
                 --    - SUM()
                 --    - AVG()

SELECT count(*) from student;
SELECT MAX(marks) FROM student;
SELECT MIN(marks) FROM student;
SELECT SUM(marks) FROM student;
SELECT AVG(marks) FROM student;


-- GROUP BY, HAVING

SELECT city, AVG(marks)
FROM student
GROUP BY city
ORDER BY AVG(marks);

SELECT city, name
from student
GROUP BY city, name
HAVING MAX(marks) > 90;