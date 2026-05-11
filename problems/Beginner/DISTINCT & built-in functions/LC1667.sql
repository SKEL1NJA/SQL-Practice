USE problems;

Create table If Not Exists Users (user_id int, name varchar(40));
Truncate table Users;
insert into Users (user_id, name) values ('1', 'aLice');
insert into Users (user_id, name) values ('2', 'bOB');

SELECT * FROM users;


-- ANSWER: https://leetcode.com/problems/fix-names-in-a-table/submissions/2000101569/

SELECT user_id, concat(
    upper(substr(name, 1, 1)),
    lower(substr(name, 2))
) AS name
FROM users
ORDER BY user_id;