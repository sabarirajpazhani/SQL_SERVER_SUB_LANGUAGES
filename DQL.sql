
USE StudentDetails;



-- DQL (Data Query Languages) 
-- SELECT - Select all the rows
SELECT * FROM Students;

-- SELECT - Select particular columns
SELECT  StudentID, StudentName 
FROM Students;

-- SELECT - Select by using WHERE Clause
SELECT StudentName, StudentMark
FROM Students
WHERE StudentMark > = 400;

-- SELECT -  Select With DISTINCT (Remove duplicates)
SELECT DISTINCT * FROM Students;
