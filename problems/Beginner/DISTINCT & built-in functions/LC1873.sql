USE problems;

Create table If Not Exists Employees (employee_id int, name varchar(30), salary int);
Truncate table Employees;
insert into Employees (employee_id, name, salary) values ('2', 'Meir', '3000');
insert into Employees (employee_id, name, salary) values ('3', 'Michael', '3800');
insert into Employees (employee_id, name, salary) values ('7', 'Addilyn', '7400');
insert into Employees (employee_id, name, salary) values ('8', 'Juan', '6100');
insert into Employees (employee_id, name, salary) values ('9', 'Kannon', '7700');

SELECT * FROM employees;


-- ANSWER: https://leetcode.com/problems/calculate-special-bonus/submissions/2000110653/

SELECT employee_id, 
CASE
WHEN employee_id % 2 = 0 THEN 0
WHEN substr(name, 1, 1) = 'M' THEN 0
ELSE salary
END AS bonus
FROM employees
ORDER BY employee_id;