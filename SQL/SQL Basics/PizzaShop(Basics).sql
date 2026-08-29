-- ============================================================
-- PIZZA SHOP SQL BASICS — PRACTICE & SOLUTIONS
-- Level: Beginner
-- Database: MySQL
-- Topics: DDL, DML, DQL, Aggregate Functions, GROUP BY
-- ============================================================


-- ============================================================
-- SCENARIO
-- ============================================================
-- You work with the database of a small pizza shop called
-- Pizza Corner.
--
-- The shop stores:
--   pizza_id
--   pizza_name
--   category
--   price
--   size
--   stock
--
-- This exercise uses one table to build SQL fundamentals
-- before moving on to multiple tables and JOINs.


-- ============================================================
-- DATASET
-- ============================================================
-- pizza_id | pizza_name        | category  | price | size   | stock
-- -----------------------------------------------------------------
-- 1        | Margherita        | Veg       | 250   | Medium | 20
-- 2        | Farmhouse         | Veg       | 350   | Large  | 15
-- 3        | Paneer Tikka      | Veg       | 400   | Large  | 12
-- 4        | Chicken BBQ       | Non-Veg   | 450   | Large  | 10
-- 5        | Chicken Pepperoni | Non-Veg   | 500   | Large  | 8
-- 6        | Veggie Delight    | Veg       | 300   | Medium | 18
-- 7        | Cheese Burst      | Veg       | 450   | Medium | 14
-- 8        | Chicken Supreme   | Non-Veg   | 550   | Large  | 6


-- ============================================================
-- PART 1: DDL — DATA DEFINITION LANGUAGE
-- ============================================================


-- Q1. Create a database called Pizza and a table called Pizzas.
-- The table should have:
-- pizza_id as INT PRIMARY KEY
-- pizza_name as VARCHAR(30)
-- category as Veg or Non-Veg
-- price as INT
-- size as Small, Medium, or Large
-- stock as INT
--
-- ANSWER:

CREATE DATABASE Pizza;

USE Pizza;

CREATE TABLE Pizzas (
    pizza_id INT PRIMARY KEY,
    pizza_name VARCHAR(30),
    category VARCHAR(10)
        CHECK (category IN ('Veg', 'Non-Veg')),
    price INT,
    size VARCHAR(10)
        CHECK (size IN ('Small', 'Medium', 'Large')),
    stock INT
);


-- Q2. Add a column called description that can store
-- up to 100 characters.
--
-- ANSWER:

ALTER TABLE Pizzas
ADD Description VARCHAR(100);


-- Q3. Rename stock to available_stock.
--
-- ANSWER:

ALTER TABLE Pizzas
RENAME COLUMN Stock TO Available_stock;


-- Q4. Remove the description column.
--
-- ANSWER:

ALTER TABLE Pizzas
DROP Description;


-- ============================================================
-- PART 2: DML — DATA MANIPULATION LANGUAGE
-- ============================================================


-- DATASET SETUP
-- Insert all the records given in the dataset.
--
-- ANSWER:

INSERT INTO Pizzas
    (pizza_id, pizza_name, category, price, size, available_stock)
VALUES
    (1, 'Margherita', 'Veg', 250, 'Medium', 20),
    (2, 'Farmhouse', 'Veg', 350, 'Large', 15),
    (3, 'Paneer Tikka', 'Veg', 400, 'Large', 12),
    (4, 'Chicken BBQ', 'Non-Veg', 450, 'Large', 10),
    (5, 'Chicken Pepperoni', 'Non-Veg', 500, 'Large', 8),
    (6, 'Veggie Delight', 'Veg', 300, 'Medium', 18),
    (7, 'Cheese Burst', 'Veg', 450, 'Medium', 14),
    (8, 'Chicken Supreme', 'Non-Veg', 550, 'Large', 6);


-- Q5. Add a new pizza:
-- 9 | Veggie Supreme | Veg | 400 | Large | 10
--
-- ANSWER:

INSERT INTO Pizzas
VALUES
    (9, 'Veggie Supreme', 'Veg', 400, 'Large', 10);


-- Q6. Increase the price of Margherita by ₹50.
--
-- ANSWER:

UPDATE Pizzas
SET price = price + 50
WHERE pizza_id = 1;


-- Q7. Chicken Supreme has sold 2 copies.
-- Reduce its available stock by 2.
--
-- ANSWER:

UPDATE Pizzas
SET available_stock = available_stock - 2
WHERE pizza_id = 8;


-- Q8. Delete Cheese Burst from the database.
--
-- ANSWER:

DELETE FROM Pizzas
WHERE pizza_id = 7;


-- ============================================================
-- PART 3: DQL — DATA QUERY LANGUAGE
-- ============================================================


-- Q9. Display all pizzas.
--
-- ANSWER:

SELECT *
FROM Pizzas;


-- Q10. Display only pizza_name and price.
--
-- ANSWER:

SELECT pizza_name, price
FROM Pizzas;


-- Q11. Display all Veg pizzas.
--
-- ANSWER:

SELECT *
FROM Pizzas
WHERE category = 'Veg';


-- Q12. Display pizzas costing more than ₹400.
--
-- ANSWER:

SELECT *
FROM Pizzas
WHERE price > 400;


-- Q13. Display pizzas costing ₹400 or less.
--
-- ANSWER:

SELECT *
FROM Pizzas
WHERE price <= 400;


-- Q14. Display pizzas with fewer than 10 units available.
--
-- ANSWER:

SELECT *
FROM Pizzas
WHERE available_stock < 10;


-- Q15. Display pizzas from cheapest to most expensive.
--
-- ANSWER:

SELECT *
FROM Pizzas
ORDER BY price ASC;


-- Q16. Display pizzas from most expensive to cheapest.
--
-- ANSWER:

SELECT *
FROM Pizzas
ORDER BY price DESC;


-- Q17. Find the most expensive pizza.
--
-- ANSWER:

SELECT *
FROM Pizzas
ORDER BY price DESC
LIMIT 1;


-- Q18. Find the cheapest pizza.
--
-- ANSWER:

SELECT *
FROM Pizzas
ORDER BY price ASC
LIMIT 1;


-- ============================================================
-- PART 4: AGGREGATE FUNCTIONS
-- ============================================================


-- Q19. Find the average pizza price.
--
-- ANSWER:

SELECT AVG(price) AS avg_price
FROM Pizzas;


-- Q20. Find the total number of pizzas.
--
-- ANSWER:

SELECT COUNT(*) AS total_number_of_pizzas
FROM Pizzas;


-- Q21. Find the total available stock.
--
-- ANSWER:

SELECT SUM(available_stock) AS total_stock
FROM Pizzas;


-- Q22. Find the highest available stock.
--
-- ANSWER:

SELECT MAX(available_stock) AS highest_stock
FROM Pizzas;


-- Q23. Find the lowest available stock.
--
-- ANSWER:

SELECT MIN(available_stock) AS lowest_stock
FROM Pizzas;


-- ============================================================
-- PART 5: GROUP BY
-- ============================================================


-- Q24. Find how many pizzas belong to each category.
-- Expected columns:
-- category | pizza_count
--
-- ANSWER:

SELECT
    category,
    COUNT(*) AS pizza_count
FROM Pizzas
GROUP BY category;


-- Q25. Find the average pizza price for each category.
-- Expected columns:
-- category | avg_price
--
-- ANSWER:

SELECT
    category,
    AVG(price) AS avg_price
FROM Pizzas
GROUP BY category;


-- Q26. Find the total available stock for each category.
-- Expected columns:
-- category | total_stock
--
-- ANSWER:

SELECT
    category,
    SUM(available_stock) AS total_stock
FROM Pizzas
GROUP BY category;


-- ============================================================
-- PART 6: BUSINESS CHALLENGE
-- ============================================================


-- Q27. The owner wants to identify pizzas for a special
-- promotion.
--
-- Find all pizzas that satisfy ALL three conditions:
-- 1. Category is Non-Veg
-- 2. Price is greater than ₹400
-- 3. Available stock is less than 10
--
-- ANSWER:

SELECT *
FROM Pizzas
WHERE category = 'Non-Veg'
  AND price > 400
  AND available_stock < 10;


