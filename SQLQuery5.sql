USE [APT1050A]

--SELECT  CustID, FirstName, LastName, City
--SELECT *
--FROM tCust

--WHERE city = 'Seattle' or PostalCode = '75201'
--where CustID NOT BETWEEN 1 and 10
--WHERE CustID IN(1,2,23)
--SELECT * FROM tCust
--WHERE city NOT IN('dallas', 'seattle')
--WHERE CustID IN (select CustID from tOrder)

SELECT * FROM tProduct
WHERE ProductID IN (select distinct ProductID FROM tOrderDetail where OrderQty > 3)