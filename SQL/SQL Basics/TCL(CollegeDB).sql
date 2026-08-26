-- ============================================================
-- SQL PRACTICE: TCL - TRANSACTION CONTROL LANGUAGE
-- ============================================================
-- Topics Covered:
-- START TRANSACTION
-- COMMIT
-- ROLLBACK
-- SAVEPOINT
-- ROLLBACK TO SAVEPOINT
-- ============================================================


-- ============================================================
-- BASIC TRANSACTION CONTROL
-- ============================================================


-- Q1. Start a transaction, insert a new student into the
--     Student table, and undo the insertion using ROLLBACK.

START TRANSACTION;

INSERT INTO Student
VALUES (10, 'Rahul', 22, 'SQL', 'Rahul@gmail.com');

ROLLBACK;


-- Q2. Start a transaction, insert a new student into the
--     Student table, and permanently save the change
--     using COMMIT.

START TRANSACTION;

INSERT INTO Student
VALUES (10, 'Rahul', 22, 'SQL', 'Rahul@gmail.com');

COMMIT;


-- ============================================================
-- ROLLBACK WITH UPDATE
-- ============================================================


-- Q3. Start a transaction, change Rahul's Age from 22 to 25,
--     and undo the change using ROLLBACK.

START TRANSACTION;

UPDATE Student
SET Age = 25
WHERE Name = 'Rahul';

ROLLBACK;


-- ============================================================
-- SAVEPOINT
-- ============================================================


-- Q4. Start a transaction.
--     Change Riya's Program from C to Python.
--     Create a savepoint named sp1.
--     Change Karan's Program from C to Java.
--     Roll back to sp1.

START TRANSACTION;

UPDATE Student
SET Program = 'Python'
WHERE Name = 'Riya';

SAVEPOINT sp1;

UPDATE Student
SET Program = 'Java'
WHERE Name = 'Karan';

ROLLBACK TO sp1;


-- ============================================================
-- MULTIPLE SAVEPOINTS
-- ============================================================


-- Q5. Start a transaction and perform the following:
--
--     1. Change Eisha's Age from 21 to 23.
--     2. Create savepoint sp1.
--     3. Change Arjun's Program from Python to Java.
--     4. Create savepoint sp2.
--     5. Change Vikram's Age from 25 to 30.
--     6. Roll back to sp1.
--
--     After rolling back to sp1:
--     Eisha's change remains.
--     Arjun's change is undone.
--     Vikram's change is undone.

START TRANSACTION;

UPDATE Student
SET Age = 23
WHERE Name = 'Eisha';

SAVEPOINT sp1;

UPDATE Student
SET Program = 'Java'
WHERE Name = 'Arjun';

SAVEPOINT sp2;

UPDATE Student
SET Age = 30
WHERE Name = 'Vikram';

ROLLBACK TO sp1;


-- ============================================================
-- SAVEPOINT + COMMIT
-- ============================================================


-- Q6. Start a transaction and perform the following:
--
--     1. Change Neha's Program from Java to Python.
--     2. Create savepoint sp1.
--     3. Change Ananya's Age from 21 to 25.
--     4. Create savepoint sp2.
--     5. Change Winston's Program from Scala to Python.
--     6. Roll back to sp2.
--     7. Commit the transaction.
--
--     Final result:
--     Neha's change is saved.
--     Ananya's change is saved.
--     Winston's change is undone.

START TRANSACTION;

UPDATE Student
SET Program = 'Python'
WHERE Name = 'Neha';

SAVEPOINT sp1;

UPDATE Student
SET Age = 25
WHERE Name = 'Ananya';

SAVEPOINT sp2;

UPDATE Student
SET Program = 'Python'
WHERE Name = 'Winston';

ROLLBACK TO sp2;

COMMIT;


