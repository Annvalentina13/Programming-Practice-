-- ============================================================
-- SQL PRACTICE: DQL - DATA QUERY LANGUAGE
-- ============================================================
-- Topics Covered:
-- SELECT
-- WHERE
-- Comparison Operators
-- AND / OR / NOT
-- BETWEEN
-- IN
-- LIKE
-- ORDER BY
-- DISTINCT
-- LIMIT
-- Aggregate Functions
-- GROUP BY
-- HAVING
-- ============================================================


-- ------------------------------------------------------------
-- PRACTICE TABLE
-- ------------------------------------------------------------

CREATE TABLE Student_DQL (
    Studentid INT PRIMARY KEY,
    Name VARCHAR(40),
    Age INT,
    Program VARCHAR(40),
    Email VARCHAR(50)
);


-- ------------------------------------------------------------
-- INSERT PRACTICE DATA
-- ------------------------------------------------------------

INSERT INTO Student_DQL
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
-- BASIC SELECT
-- ============================================================


-- Q1. Display all columns and all students from Student_DQL.

SELECT *
FROM Student_DQL;


-- Q2. Display only the Name and Email of all students.

SELECT Name, Email
FROM Student_DQL;


-- ============================================================
-- WHERE + COMPARISON OPERATORS
-- ============================================================


-- Q3. Display all students whose Age is greater than 21.

SELECT *
FROM Student_DQL
WHERE Age > 21;


-- Q4. Display all students whose Program is Python.

SELECT *
FROM Student_DQL
WHERE Program = 'Python';


-- ============================================================
-- LOGICAL OPERATORS
-- ============================================================


-- Q5. Display all students who are older than 20
--     AND are studying Python.

SELECT *
FROM Student_DQL
WHERE Age > 20
  AND Program = 'Python';


-- Q6. Display all students whose Program is either C or Java.

SELECT *
FROM Student_DQL
WHERE Program = 'C'
   OR Program = 'Java';


-- ============================================================
-- BETWEEN
-- ============================================================


-- Q7. Display all students whose Age is between 20 and 23,
--     inclusive.

SELECT *
FROM Student_DQL
WHERE Age BETWEEN 20 AND 23;


-- ============================================================
-- IN
-- ============================================================


-- Q8. Display all students whose Program is either
--     Python, Java, or C.

SELECT *
FROM Student_DQL
WHERE Program IN ('Python', 'Java', 'C');


-- ============================================================
-- LIKE
-- ============================================================


-- Q9. Display all students whose Name starts with the
--     letter 'A'.

SELECT *
FROM Student_DQL
WHERE Name LIKE 'A%';


-- Q10. Display all students whose Name ends with the
--      letter 'a'.

SELECT *
FROM Student_DQL
WHERE Name LIKE '%a';


-- ============================================================
-- NOT / NOT EQUAL
-- ============================================================


-- Q11. Display all students whose Program is NOT Python.

SELECT *
FROM Student_DQL
WHERE Program != 'Python';


-- ============================================================
-- ORDER BY
-- ============================================================


-- Q12. Display all students sorted by Age from youngest
--      to oldest.

SELECT *
FROM Student_DQL
ORDER BY Age ASC;


-- Q13. Display all students sorted by Age from oldest
--      to youngest.

SELECT *
FROM Student_DQL
ORDER BY Age DESC;


-- ============================================================
-- DISTINCT
-- ============================================================


-- Q14. Display all unique Program values from Student_DQL.

SELECT DISTINCT Program
FROM Student_DQL;


-- ============================================================
-- LIMIT
-- ============================================================


-- Q15. Display only the first 3 students from Student_DQL.

SELECT *
FROM Student_DQL
LIMIT 3;


-- ============================================================
-- AGGREGATE FUNCTIONS
-- ============================================================


-- Q16. Find the total number of students in Student_DQL.

SELECT COUNT(*)
FROM Student_DQL;


-- Q17. Find the average Age of all students.

SELECT AVG(Age)
FROM Student_DQL;


-- Q18. Find the oldest Age among all students.

SELECT MAX(Age)
FROM Student_DQL;


-- Q19. Find the youngest Age among all students.

SELECT MIN(Age)
FROM Student_DQL;


-- Q20. Find the total of all students' Ages combined.

SELECT SUM(Age)
FROM Student_DQL;


-- ============================================================
-- GROUP BY
-- ============================================================


-- Q21. Display each Program along with the number of
--      students enrolled in that Program.

SELECT Program, COUNT(*)
FROM Student_DQL
GROUP BY Program;


-- Q22. Display each Program along with the average Age
--      of students in that Program.

SELECT Program, AVG(Age)
FROM Student_DQL
GROUP BY Program;


-- ============================================================
-- HAVING
-- ============================================================


-- Q23. Display only those Programs that have more than
--      1 student.

SELECT Program, COUNT(*)
FROM Student_DQL
GROUP BY Program
HAVING COUNT(*) > 1;


-- Q24. Display each Program and the number of students
--      aged 21 or older in that Program.
--      Only display Programs that have more than 1
--      such student.

SELECT Program, COUNT(*)
FROM Student_DQL
WHERE Age >= 21
GROUP BY Program
HAVING COUNT(*) > 1;


