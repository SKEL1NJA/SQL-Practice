USE problems;

Create table If Not Exists Employee (Id int, Salary int);
Truncate table Employee;
insert into Employee (id, salary) values ('1', '100');
insert into Employee (id, salary) values ('2', '200');
insert into Employee (id, salary) values ('3', '300');

SELECT * FROM employee;


-- ANSWER: https://leetcode.com/problems/nth-highest-salary/submissions/1999434552/

CREATE FUNCTION getNthHighestSalary(N INT) RETURNS INT
BEGIN
  SET N=N-1;
  RETURN (
      SELECT DISTINCT salary
      FROM Employee
      ORDER BY salary DESC
      LIMIT N, 1
  );
END