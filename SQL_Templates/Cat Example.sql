--------------- Instructions: ---------------
--Run in http://sqlfiddle.com/#!18 on Chrome
--Select MS SQL Server 2017 in the drop-down



--------------- Example 1: ---------------

----- BUILDING AND POPULATING TABLE ------
------------------------------------------
--sqlfiddle instructions: ----------------
--PASTE THIS SECTION AND CLICK 'BUILD SCHEMA'
-----------------------------------------

CREATE TABLE catsTBL (
	Name varchar(50),
	Color varchar(50)
);

INSERT INTO [catsTBL] (Name, Color)
VALUES 
	('Jiji', 'Black'),
	('Senior Fuzz', 'White'),
	('Sprinkles', 'White and Grey'),
	('Pumpkin', 'Orange');

---- END BUILDING AND POPULATING TABLE ----
-------------------------------------------

SELECT * FROM [catsTBL];

-- This drops the table to clean up
DROP TABLE [catsTBL];



--------------- Example 2: ---------------

----- BUILDING AND POPULATING TABLE ------
------------------------------------------
--sqlfiddle instructions: ----------------
--PASTE THIS SECTION AND CLICK 'BUILD SCHEMA'
-----------------------------------------

CREATE TABLE catsTBL (
	Cat_ID int NOT NULL PRIMARY KEY,
	Name varchar(50),
	Color varchar(50)
);

CREATE TABLE careTBL (
	Care_ID int NOT NULL PRIMARY KEY,
	Cat_ID int FOREIGN KEY REFERENCES catsTBL(Cat_ID),
	Care_Details varchar(255)
);

INSERT INTO [catsTBL] (Cat_ID, Name, Color)
VALUES 
	(1, 'Jiji', 'Black'),
	(2, 'Senior Fuzz', 'White'),
	(3, 'Sprinkles', 'White and Grey'),
	(4, 'Pumpkin', 'Orange');

INSERT INTO [careTBL] (Care_ID, Cat_ID, Care_Details)
VALUES 
	(1, 1, 'Diabetes Medication'),
	(2, 1, 'No Walks'),
	(3, 4, 'Lice Pills'),
	(4, 2, 'Only Eats Nachos');

---- END BUILDING AND POPULATING TABLE ----
-------------------------------------------

-- Joins our results and returns all data, but can be hard to read
SELECT *
FROM [catsTBL] AS cats
INNER JOIN careTBL AS care ON cats.Cat_ID = care.Cat_ID;

-- Using aliases to clean up results display
SELECT cats.Name AS Name, care.Care_Details
FROM [catsTBL] AS cats
INNER JOIN careTBL AS care ON cats.Cat_ID = care.Cat_ID;

-- Demonstrating TSQL data manipulation
SELECT 
	cats.Name AS Name, 
	ISNULL(
		STUFF(
			(SELECT ', ' + care.Care_Details 
			FROM careTBL AS care
			WHERE cats.Cat_ID = care.Cat_ID
		FOR XML PATH('')), 1, 1, ''), 
	'None') AS Care
FROM [catsTBL] AS cats


-- This drops the tables to clean up
DROP TABLE catsTBL;
DROP TABLE careTBL;