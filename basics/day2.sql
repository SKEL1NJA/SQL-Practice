CREATE DATABASE IF NOT EXISTS basics;

use basics;

CREATE TABLE day2(
    id int auto_increment PRIMARY KEY,
    name VARCHAR(255),
    age INT,
    email VARCHAR(255) NOT NULL
);

INSERT INTO day2(name, age, email)
VALUES
('Alice', 25, 'alice@gmail.com'),
('Bob', 35, 'bob@example.com'),
('carol', 19, 'carol@yahoo.com'),
('david', 42, 'david@gmail.com');

SELECT * FROM day2;

-- FILTERS
-- WHERE, LIKE, BETWEEN

SELECT NAME,email FROM day2 WHERE age>19 AND age<42;

SELECT * FROM day2 WHERE email like '%gmail.com';

SELECT * FROM day2 WHERE NAME like '_o_';


-- ORDER BY, LIMIT, OFFSET

SELECT NAME FROM day2 ORDER BY age;
SELECT NAME FROM day2 ORDER BY age DESC;
SELECT * FROM day2 ORDER BY name, age desc;

SELECT * FROM day2 LIMIT 2; -- show first 2

SELECT * FROM day2 LIMIT 2,2; -- skip 2 and show next 2

