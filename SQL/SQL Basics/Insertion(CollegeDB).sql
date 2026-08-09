-- Insert the following 5 students into the Students table.

--StudentID	Name	Department	Age	CGPA
--101	Anu	CSE	19	8.75
--102	Ravi	ECE	20	8.20
--103	Meena	AI	19	9.10
--104	Karthik	CSE	21	7.95
--105	Priya	IT	20	8.65
--💡 Hint
--Use INSERT INTO.
--You can insert all five rows using one statement.
--Make sure the values follow the same order as the columns.

INSERT INTO Students (StudentID, Name, Department, Age, CGPA)
VALUES
(101, 'Anu', 'CSE', 19, 8.75),
(102, 'Ravi', 'ECE', 20, 8.20),
(103, 'Meena', 'AI', 19, 9.10),
(104, 'Karthik', 'CSE', 21, 7.95),
(105, 'Priya', 'IT', 20, 8.65);
