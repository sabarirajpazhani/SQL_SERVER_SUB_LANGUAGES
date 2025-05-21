USE StudentDetails;

SELECT * FROM Students;

--DML (Data Manipulation Language) 
--a). INSERT (Inserting records in the students table)
INSERT INTO Students (StudentID, StudentName, StudentMark)
VALUES (1, 'Alice', 487),
	   (2,'Bob',359),
	   (3, 'Chris',400);

--INSERT (Insert using variable)
DECLARE @Id INT;
SET @Id = 4;

DECLARE @StudentName VARCHAR (20) ;
SET @StudentName = 'Dravid';

DECLARE @StudentMark INT ;
SET @StudentMark = 389;

INSERT INTO Students (StudentID, StudentName, StudentMark)
VALUES (@Id,@StudentName,@StudentMark);


--b). UPDATE - Modify the existing data
UPDATE Students
SET StudentMark = 300
WHERE StudentID = 2;

--UPDATE - Update multiple data
ALTER TABLE Students
ADD StudentDept VARCHAR(20);
GO

UPDATE Students 
SET 
StudentDept = CASE
	WHEN StudentID = 1 THEN 'CSE'
	WHEN StudentID = 2 THEN 'AIDS'
	WHEN StudentID = 3 THEN 'IT'
	WHEN StudentID = 4 THEN 'CS'
ELSE
	StudentDept
END;


-- c). DELETE - Delete the particular column
DELETE FROM Students
WHERE StudentID = 4;

--DELETE - Delete all the rows
DELETE FROM Students;

--DELETE - Delete the multiple rows by using IN
DELETE FROM Students
WHERE StudentID IN (1,3);

-- DELETE - Deletes the first 3 rows
DELETE TOP(3) FROM Students;

	