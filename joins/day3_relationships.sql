CREATE DATABASE joins;
USE joins;

-- ONE-TO-ONE

CREATE Table person(
    person_id int auto_increment PRIMARY KEY,
    name VARCHAR(255)
);
INSERT INTO person(name)
VALUES
('Alice'),
('Bob'),
('Carol');

CREATE Table passport(
    passport_id INT PRIMARY KEY,
    person_id INT,
    passport_number VARCHAR(255),

    Foreign Key (person_id) REFERENCES person(person_id)
);
INSERT INTO passport(passport_id, person_id, passport_number)
VALUES
(101, 1, 'A1234567'),
(102, 2, 'B9876543'),
(103, 3, 'C1122334');

SELECT * FROM person;
SELECT * FROM passport;

-- Each row in Table A is linked to one (and only one) row in Table B, and vice versa.
-- One person → One passport


-- ONE-TO-MANY

CREATE Table user(
    user_id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(255)
);
INSERT INTO user(name)
VALUES
('Alice'),
('Bob'),
('Carol');

CREATE Table orders(
    order_id INT PRIMARY KEY,
    user_id INT,
    product_name VARCHAR(255),

    Foreign Key (user_id) REFERENCES user(user_id)
);
INSERT INTO orders(order_id, user_id, product_name)
VALUES
(101, 1, 'Phone'),
(102, 1, 'Laptop'),
(103, 2, 'Tablet');

SELECT * FROM user;
SELECT * FROM orders;

-- One row in Table A relates to many rows in Table B, but each row in Table B relates to only one in Table A.
-- One user → Many orders


-- MANY-TO-MANY

CREATE Table student(
    student_id INT auto_increment PRIMARY KEY,
    name VARCHAR(255)
);
INSERT INTO student(name)
VALUES
('Alice'),
('Bob'),
('Carol');

CREATE Table courses(
    course_id INT PRIMARY KEY,
    title VARCHAR(255)
);
INSERT INTO courses(course_id, title)
VALUES
(101, 'Maths'),
(102, 'Science'),
(103, 'History');

CREATE Table student_courses(
    student_id INT,
    course_id INT,

    Foreign Key (student_id) REFERENCES student(student_id),
    Foreign Key (course_id) REFERENCES courses(course_id)
);
INSERT INTO student_courses(student_id, course_id)
VALUES
(1, 101),
(2, 101),
(1, 102),
(3, 103);

SELECT * FROM student;
SELECT * FROM courses;
SELECT * FROM student_courses;

-- Each row in Table A can relate to many rows in Table B, and vice versa.
-- Needs a junction table (aka join table or bridge table).
-- Many students → Many courses