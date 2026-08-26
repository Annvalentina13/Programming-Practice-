-- ============================================================
-- SQL PRACTICE: DDL AND DML
-- Database: CollegeDB
-- ============================================================


-- =========================
-- DDL - DATA DEFINITION LANGUAGE
-- =========================

-- Q1. Create a database named CollegeDB and select it for use.


-- Q2. Create a Student table with the following columns:
--     Studentid - INT and Primary Key
--     Name      - VARCHAR(40)
--     Age       - INT
--     Course    - VARCHAR(40)
--     Email     - VARCHAR(40)


-- Q3. Add a Phone column of type INT to the Student table.


-- Q4. Modify the Age column so that its datatype is SMALLINT.


-- Q5. Rename the Course column to Program.


-- Q6. Remove the Phone column from the Student table.


-- Q7. Create a Departments table with the following columns:
--     DeptID   - INT
--     DeptName - VARCHAR(30)


-- Q8. Delete the Departments table completely.


-- Q9. Remove all records from the Student table while keeping
--     the table structure intact.



-- =========================
-- DML - DATA MANIPULATION LANGUAGE
-- =========================

-- Q10. Insert a student into the Student table with the following details:
--      Studentid = 5
--      Name      = Neha
--      Age       = 21
--      Program   = Java
--      Email     = Neha@gmail.com


-- Q11. Update Neha's age from 21 to 22.


-- Q12. Change Neha's Program from Java to Python.


-- Q13. Delete Neha's record from the Student table.


-- Q14. Insert the following three students into the Student table:
--
--      Studentid | Name    | Age | Program | Email
--      ------------------------------------------------
--      1         | Riya    | 22  | C       | Riya@gmail.com
--      2         | Eisha   | 21  | Python  | Ei@gmail.com
--      3         | Winston | 20  | Scala   | Wins@gmail.com

CREATE DATABASE CollegeDB;
USE CollegeDB;

CREATE TABLE Student(
    Studentid INT PRIMARY KEY,
    Name VARCHAR(40),
    Age INT,
    Course VARCHAR(40),
    Email VARCHAR(40)
);

ALTER TABLE Student
ADD Phone INT;

ALTER TABLE Student
MODIFY Age SMALLINT;

ALTER TABLE Student
RENAME COLUMN Course TO Program;

ALTER TABLE Student
DROP Phone;

CREATE TABLE Departments(
    DeptID INT,
    DeptName VARCHAR(30)
);

DROP TABLE Departments;

TRUNCATE TABLE Student;


INSERT INTO Student
VALUES (5, 'Neha', 21, 'Java', 'Neha@gmail.com');

UPDATE Student
SET Age = 22
WHERE Studentid = 5;

UPDATE Student
SET Program = 'Python'
WHERE Studentid = 5;

DELETE FROM Student
WHERE Studentid = 5;

INSERT INTO Student
VALUES
(1, 'Riya', 22, 'C', 'Riya@gmail.com'),
(2, 'Eisha', 21, 'Python', 'Ei@gmail.com'),
(3, 'Winston', 20, 'Scala', 'Wins@gmail.com');
