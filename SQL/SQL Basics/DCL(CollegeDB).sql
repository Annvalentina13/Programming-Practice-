-- ============================================================
-- SQL PRACTICE: DCL - DATA CONTROL LANGUAGE
-- ============================================================
-- Topics Covered:
-- GRANT
-- REVOKE
-- Table-Level Privileges
-- Database-Level Privileges
-- ============================================================


-- ------------------------------------------------------------
-- CHECK EXISTING USERS
-- ------------------------------------------------------------

-- Display all MySQL users and their hosts.

SELECT User, Host
FROM mysql.user;


-- Display a specific user if it exists.

SELECT User, Host
FROM mysql.user
WHERE User = 'student_user';


-- ------------------------------------------------------------
-- CREATE PRACTICE USER
-- ------------------------------------------------------------

-- Create a new MySQL user named student_user.

CREATE USER 'student_user'@'localhost'
IDENTIFIED BY 'Student@123';


-- ============================================================
-- GRANT
-- ============================================================


-- Q1. Give student_user permission to read (SELECT) data
--     from the Student table in the CollegeDB database.

GRANT SELECT
ON CollegeDB.Student
TO 'student_user'@'localhost';


-- Q2. Give student_user permission to SELECT and INSERT
--     data into the Student table in CollegeDB.

GRANT SELECT, INSERT
ON CollegeDB.Student
TO 'student_user'@'localhost';


-- Q3. Give student_user all privileges on the Student
--     table in CollegeDB.

GRANT ALL PRIVILEGES
ON CollegeDB.Student
TO 'student_user'@'localhost';


-- ============================================================
-- REVOKE
-- ============================================================


-- Q4. Remove only the INSERT permission from student_user
--     on the Student table.

REVOKE INSERT
ON CollegeDB.Student
FROM 'student_user'@'localhost';


-- Q5. Remove UPDATE and DELETE permissions from
--     student_user on the Student table.

REVOKE UPDATE, DELETE
ON CollegeDB.Student
FROM 'student_user'@'localhost';


-- ============================================================
-- DATABASE-LEVEL PRIVILEGES
-- ============================================================


-- Q6. Give student_user SELECT permission on all tables
--     inside the CollegeDB database.

GRANT SELECT
ON CollegeDB.*
TO 'student_user'@'localhost';


-- Q7. Remove SELECT permission from student_user for
--     all tables inside the CollegeDB database.

REVOKE SELECT
ON CollegeDB.*
FROM 'student_user'@'localhost';

