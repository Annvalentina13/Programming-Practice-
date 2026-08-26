-- ============================================================
-- SQL PRACTICE: DML + OPERATORS
-- ============================================================
-- Topics Covered:
-- INSERT, UPDATE, DELETE
-- Comparison Operators: =, <>, >, <, >=, <=
-- Logical Operators: AND, OR, NOT
-- Other Operators: BETWEEN, IN, LIKE
-- ============================================================


-- ------------------------------------------------------------
-- PRACTICE DATA
-- ------------------------------------------------------------

INSERT INTO Student
(Studentid, Name, Age, Program, Email)
VALUES
(1, 'Riya', 22, 'C', 'Riya@gmail.com'),
(2, 'Eisha', 21, 'Python', 'Eisha@gmail.com'),
(3, 'Winston', 20, 'Scala', 'Winston@gmail.com'),
(4, 'Arjun', 24, 'Python', 'Arjun@gmail.com'),
(5, 'Neha', 19, 'Java', 'Neha@gmail.com'),
(6, 'Karan', 23, 'C', 'Karan@gmail.com'),
(7, 'Ananya', 21, 'Java', 'Ananya@gmail.com'),
(8, 'Vikram', 25, 'Python', 'Vikram@gmail.com');


-- ============================================================
-- COMPARISON OPERATORS
-- ============================================================


-- Q1. Update the Program of the student whose Studentid is 3
--     to 'Python'.

UPDATE Student
SET Program = 'Python'
WHERE Studentid = 3;


-- Q2. Delete all students whose Age is greater than 23.

DELETE FROM Student
WHERE Age > 23;


-- ============================================================
-- LOGICAL OPERATORS
-- ============================================================


-- Q3. Update the Program to 'Advanced Python' for students
--     who are older than 20 AND currently study Python.

UPDATE Student
SET Program = 'Advanced Python'
WHERE Age > 20
  AND Program = 'Python';


-- Q4. Delete students whose Program is either 'C' OR 'Java'.

DELETE FROM Student
WHERE Program = 'C'
   OR Program = 'Java';


-- ============================================================
-- BETWEEN OPERATOR
-- ============================================================


-- Q5. Update the Program to 'Eligible' for students whose
--     Age is between 20 and 22, inclusive.

UPDATE Student
SET Program = 'Eligible'
WHERE Age BETWEEN 20 AND 22;


-- ============================================================
-- IN OPERATOR
-- ============================================================


-- Q6. Delete students whose Program is either 'Python' or 'Scala'.

DELETE FROM Student
WHERE Program IN ('Python', 'Scala');


-- ============================================================
-- LIKE OPERATOR
-- ============================================================


-- Q7. Delete students whose Name starts with the letter 'A'.

DELETE FROM Student
WHERE Name LIKE 'A%';


-- ============================================================
-- COMBINATION OF OPERATORS
-- ============================================================


-- Q8. Update the Program to 'Selected' for students who:
--     - Are between 20 and 24 years old
--     - AND study either C or Python
--
--     Use BETWEEN, AND, and IN.

UPDATE Student
SET Program = 'Selected'
WHERE Age BETWEEN 20 AND 24
  AND Program IN ('C', 'Python');


-- Q9. Delete students who:
--     - Are younger than 22
--     - AND whose Program is NOT Python.
--
--     Use either NOT or <>.

DELETE FROM Student
WHERE Age < 22
  AND Program <> 'Python';


-- Q10. Update the Program to 'Scholar' for students who:
--      - Are at least 21 years old
--      - AND whose Name starts with 'A'
--        OR whose Program is Python.
--
--      Use parentheses to correctly combine AND and OR.

UPDATE Student
SET Program = 'Scholar'
WHERE Age >= 21
  AND (Name LIKE 'A%' OR Program = 'Python');
