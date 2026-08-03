-- Create a table named Books with the following structure.

-- Column	Data Type	Constraint
-- BookID	INT	PRIMARY KEY
-- Title	VARCHAR(50)	NOT NULL
-- Author	VARCHAR(40)
-- Price	DECIMAL(6,2)
-- Stock	INT

-- Hint
-- Define the column names first.
-- Assign appropriate data types.
-- Declare the primary key inside the table definition.
-- Make the Title field mandatory.

CREATE TABLE Books (
         BookID INT PRIMARY KEY,
         Title VARCHAR(50) NOT NULL,
         Author VARCHAR(50),
         Price DECIMAL(6,2),
         Stock INT
);