--USE [APT1050A]

--SELECT * FROM tOrder
/*
CREATE VIEW vOrder AS
SELECT SalesOrderID, OrderDate, CustomerID
FROM tOrder */

--SELECT * FROM vOrder

/*
CREATE VIEW vOrderDisplay AS
SELECT SalesOrderID, OrderDate, tOrder.CustomerID, FirstName, tCust.LastName

FROM tOrder

INNER JOIN tCust

ON tOrder.CustomerID = tCust.CustID */

--SELECT * FROM vOrderDisplay

/* CREATE VIEW vCustomer AS
SELECT tCust.CustID, FirstName, LastName, City
FROM tCust */

/* CREATE VIEW vCustAlias (CustId, Fname, Lname) AS
SELECT CustID, FirstName, LastName
FROM vCustomer */

--SELECT * FROM vCustomer

SELECT * FROM vCustAlias