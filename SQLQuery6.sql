USE [APT1050A]

SELECT sum(OrderQty) As TotalQty
From tOrderDetail

SELECT count (productID) As TotalRecords
From tProduct

-- For product Grouped by product IDs generally
SELECT ProductID, SUM(OrderQty) As TotalQty
FROM tOrderDetail
GROUP BY ProductID
ORDER BY ProductID asc

-- Totals that go with particular product
SELECT ProductID, SUM(OrderQty) As TotalQty
FROM tOrderDetail
WHERE ProductID = 410
GROUP BY ProductID
--ORDER BY ProductID asc

-- Average of order quantity
SELECT ProductID, AVG(OrderQty) As AvgQty
FROM tOrderDetail
GROUP BY ProductID
ORDER BY ProductID asc

SELECT ProductID, SUM(OrderQty) As TotalQty
FROM tOrderDetail
WHERE ProductID = 413
GROUP BY ProductID

-- HAVING 
SELECT ProductID, SUM(OrderQty) AS TotalQty
FROM tOrderDetail
GROUP BY ProductID
HAVING SUM(OrderQty) > 6
ORDER BY ProductID asc

--using where and having
-- Where Clause
SELECT COUNT(SalesOrderID)
FROM tOrderDetail
WHERE UnitPrice > 50

-- Having Clause
SELECT SalesOrderID, SUM(UnitPrice*OrderQty) AS TotalPrice
FROM tOrderDetail
GROUP BY SalesOrderID
Having SalesOrderID > 09736

-- Design a query showing list of productIDs where sum of OrderQty is greater than 150.
SELECT tOrderDetail.ProductID, SUM(OrderQty) AS TotalQty
From tOrderDetail
INNER JOIN tProduct
ON tOrderDetail.ProductID = tProduct.ProductID
GROUP BY tOrderDetail.ProductID
HAVING SUM(OrderQty) > 5
--ORDER BY ProductID
--HAVING TotalQty > 5

-- Trying Grouping by productName
SELECT ProductName, SUM(OrderQty) AS TotalQty
From tOrderDetail
INNER JOIN tProduct
ON tOrderDetail.ProductID = tProduct.ProductID
GROUP BY ProductName
HAVING SUM(OrderQty) > 5
--ORDER BY ProductID
--HAVING TotalQty > 5