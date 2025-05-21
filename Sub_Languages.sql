-- Sub Languages
-- Creating the Student Database
CREATE DATABASE Students;

SELECT * FROM Students;

USE Students;


-- 1. DDL (Data Definiton Language) 
-- a). CREATE - Creating the Student Table
CREATE TABLE Student(
    StudentID INT PRIMARY KEY,
	StudentName VARCHAR(20),
	StudentMark INT CHECK(StudentMark <=500)
);

-- b). ALTER - Add new cloumn
ALTER TABLE Student
ADD StudentDept VARCHAR(10);
-- ALTER - Change the database name;
ALTER DATABASE Students MODIFY Name= StudentDetails;
-- ALTER - Chnage the columns data type
ALTER TABLE Student 
ALTER COLUMN StudentName VARCHAR(50)
-- ALTER - Drop the particular Column
ALTER TABLE Student
DROP COLUMN StudentDept;

-- c). DROP - Drop the column
ALTER TABLE Student
DROP COLUMN StudentDept;
--DROP - Drop the Database
DROP DATABASE StudentDetails;
--DROP - Drop the multiple Database	
DROP DATABASE Student1, Students2,Student3;
--DROP - Drop the table
DROP TABLE Students;

-- d).	RENAME - Rename the table
EXEC sp_rename 'Student' , 'Students';
--RENAME - Rename the Column
EXEC sp_rename 'StudentName','StudName','COLUMN';

--e). TRUNCATE - Used to delete the table but the structure can be remains same
TRUNCATE TABLE Students;