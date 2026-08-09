--Question 1 — Create Database

-- Create a database named:

-- CollegeDB
-- 💡 Hint
-- Use the command used to create a new database.
-- End the statement with ;.

CREATE DATABASE CollegeDB;

-- Question 2 — Select Database

-- Make CollegeDB the current database.

USE CollegeDB;

-- 💡 Hint
--Use the command that selects an existing database.
--Question 3 — Create Table

--Create a table named Students with the following structure:
  
--StudentID	INT	PRIMARY KEY
--Name	VARCHAR(50)	NOT NULL
--Department	VARCHAR(30)	
--Age	INT	
--CGPA	DECIMAL(3,2)	
--💡 Hint
--Use CREATE TABLE.
--Define each column inside ( ).
--StudentID should be the primary key.
--Name should not accept NULL.

CREATE TABLE Students(
      StudentID INT PRIMARY KEY,
      Name VARCHAR(50) NOT NULL,
      Department VARCHAR(30),
      Age INT,
      CGPA DECIMAL(3,2));
