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

-- View all record in table 1
SELECT * FROM tEmployee

-- View all record in table 2
SELECT * FROM tEmployee2