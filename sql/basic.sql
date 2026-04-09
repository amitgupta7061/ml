-- CREATE DATABASE IF NOT EXISTS college;

-- USE college;


-- CREATE TABLE student (
--     roll_no INT,
--     name VARCHAR(50),
--     age INT
-- );

-- INSERT INTO student Values (1, "Amit", 20), (2, "Golu", 21), (3, "Shweta", 18);

SELECT * from student;


-- Stored Procedure Example
-- predefined set of sql statements that can be executed as a single unit, often with parameters

-- SYNTAX (MySQL):

DELIMITER $$

CREATE PROCEDURE GetStudentByAge (IN age_threshold INT)
BEGIN
    SELECT * FROM student WHERE age > age_threshold;
END$$

DELIMITER ;

-- with return value
DELIMITER $$
CREATE FUNCTION GetAverageAge (age_threshold INT) RETURNS FLOAT
BEGIN
    DECLARE avg_age FLOAT;
    SELECT AVG(age) INTO avg_age FROM student WHERE age > age_threshold;
    RETURN avg_age;
END$$   
DELIMITER ;

-- with return value using in and out
DELIMITER $$
CREATE PROCEDURE GetAverageAgeWithOut (IN age_threshold INT, OUT avg_age FLOAT)
BEGIN
    SELECT AVG(age) INTO avg_age FROM student WHERE age > age_threshold;
END$$
DELIMITER ;

-- Drop procedure
DROP PROCEDURE IF EXISTS GetStudentByAge;
