USE problems;

Create table If Not Exists Users1 (user_id int, name varchar(30), mail varchar(50));
Truncate table Users1;
insert into Users1 (user_id, name, mail) values ('1', 'Winston', 'winston@leetcode.com');
insert into Users1 (user_id, name, mail) values ('2', 'Jonathan', 'jonathanisgreat');
insert into Users1 (user_id, name, mail) values ('3', 'Annabelle', 'bella-@leetcode.com');
insert into Users1 (user_id, name, mail) values ('4', 'Sally', 'sally.come@leetcode.com');
insert into Users1 (user_id, name, mail) values ('5', 'Marwan', 'quarz#2020@leetcode.com');
insert into Users1 (user_id, name, mail) values ('6', 'David', 'david69@gmail.com');
insert into Users1 (user_id, name, mail) values ('7', 'Shapiro', '.shapo@leetcode.com');

SELECT * FROM users1


-- ANSWER: https://leetcode.com/problems/find-users-with-valid-e-mails/submissions/2000125176/

SELECT * FROM users1
WHERE mail REGEXP
'^[A-Za-z][A-Za-z0-9_.-]*@leetcode.com$'
AND mail LIKE BINARY '%@leetcode.com';
