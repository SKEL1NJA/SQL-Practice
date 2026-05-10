USE aggregates;
SHOW tables;

SELECT * FROM student;

-- Q-1. Get name of all the students who scored more than class average
SELECT name 
FROM student
WHERE marks >
(SELECT AVG(marks) FROM student);

-- Q-2. Find the maximum marks of the students of Delhi
SELECT max(marks)
FROM(SELECT marks FROM student WHERE city = "Delhi") as temp;