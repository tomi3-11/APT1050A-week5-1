CREATE DATABASE ORG

USE ORG

-- TAble 1
CREATE TABLE tEmployee (
	EmployeeID INT NOT NULL,
	FirstName VARCHAR(30) NOT NULL,
	LastName VARCHAR(30) NOT NULL,
	Department VARCHAR(30) NOT NULL,
	PRIMARY KEY (EmployeeID)
)

--Table 2
CREATE TABLE tEmployee2 (
	EmployeeID INT NOT NULL,
	FirstName VARCHAR(30) NOT NULL,
	LastName VARCHAR(30) NOT NULL,
	Department VARCHAR(30) NOT NULL,
	PRIMARY KEY (EmployeeID)
)

INSERT INTO tEmployee (EmployeeID, FirstName, LastName, Department)
VALUES (1001, 'Tom', 'Jose', 'Sales')

-- if you want data for all fields then no need to identitfy the fields
INSERT INTO tEmployee
VALUES 
(4002, 'Bibs', 'Jose', 'Engineering'),
(6002, 'Na', 'Jose', 'Health'),
(4006, 'Li', 'Jose', 'Finance'),
(4008, 'Dvd', 'Jose', 'Finance')
--NOTE: The values must be in the correct order.

-- copying all record from one table to another
INSERT INTO tEmployee2
SELECT * FROM tEmployee
-- SELECT statement provides data from the first table

-- View all record in table 1
SELECT * FROM tEmployee

-- View all record in table 2
SELECT * FROM tEmployee2

-- SELECT INTO

/*
This create a duplicate table which is different from the rest
NOTE: Generates an error if table already exist
*/

SELECT * INTO tEmployee3
FROM tEmployee2

SELECT * FROM tEmployee3


-- UPDATE
-- To Update one record.
/*
STRUCTURE:

UPDATE tablename
SET column1 = value1
WHERE column2 = value1

*/
UPDATE tEmployee2
SET FirstName = 'Tomi'
WHERE EmployeeID = 1

UPDATE tEmployee2
SET EmployeeID = 1009
WHERE FirstName = 'Tomi'
/*
MORE EXAMPLES:

UPDATE tCustomer
SET PostalCode = '00100'
WHERE city = 'LONDON'

*/

-- DELETE

DELETE FROM tEmployee3
/*
Deletes all records in the table
Notice no fields mentioned
*/

DELETE FROM tEmployee2
WHERE FirstName = 'Tomi'

/*Deletes a particular record*/

-- Virtual DELETE

/*
Database admin avoid deletes by using virtual deletes
Deleting from a view

*/

-- Virtual Delete- DeleteFlag

-- To add a field to a table 
ALTER TABLE tEmployee2
ADD DeleteFlag bit;

-- Update Delete Flag
UPDATE tEmployee2
SET DeleteFlag = '0'
WHERE Department = 'Finance'

-- View table
SELECT * FROM tEmployee2

-- Virtual DELETE - VIEW

CREATE VIEW vtEmployee2 AS
SELECT * FROM tEmployee2
WHERE DeleteFlag = 0

-- displaying the view
SELECT * FROM vtEmployee2
