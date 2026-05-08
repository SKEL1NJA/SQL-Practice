USE joins;
SHOW tables;

SELECT * FROM user;
SELECT * FROM orders;

-- INNER JOIN
-- selects only the records that have matching values in both tables

SELECT user.name, orders.product_name
FROM user INNER JOIN orders
ON user.user_id = orders.user_id;


-- LEFT JOIN
-- All from left table, even if no match

SELECT user.name, orders.product_name
FROM user LEFT JOIN orders
ON user.user_id = orders.user_id;

-- RIGHT JOIN
-- All from right table, even if no match

SELECT user.name, orders.product_name
FROM user RIGHT JOIN orders
ON user.user_id = orders.user_id;