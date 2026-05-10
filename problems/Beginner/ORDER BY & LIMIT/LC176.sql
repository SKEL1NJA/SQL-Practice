USE problems;

Create table If Not Exists Employee (id int, salary int);
Truncate table Employee;
insert into Employee (id, salary) values ('1', '100');
insert into Employee (id, salary) values ('2', '200');
insert into Employee (id, salary) values ('3', '300');

SELECT * FROM employee;


-- ANSWER: https://leetcode.com/problems/second-highest-salary/submissions/1999417085/

SELECT(
    SELECT DISTINCT salary
    FROM employee
    ORDER BY salary DESC
    LIMIT 1 offset 1
) AS SecondHighestSalary;