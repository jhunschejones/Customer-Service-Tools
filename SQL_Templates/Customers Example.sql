--See "Chrome Bookmarks For SQL Try-It.md" for setup----
--------------------------------------------------------
--Examples:---------------------------------------------
--Select all data that is on both the customers and ----
--orders database where they overlap at the Customer ID-
--------------------------------------------------------
SELECT * 
FROM [Customers]
INNER JOIN [Orders] ON 
Customers.CustomerID = Orders.CustomerID


---------------------------------------------------------
--Select the customer’s name and ID along with order ID--
--from the customers and orders database where they -----
--overlap at the Customer ID-----------------------------
--Trainer NOTE: if we use aliases without ‘’ they will --
--work unless it is a reserved word like ‘Order’. Show --
--class the SQL error if we use just Order without the --
--quotes-------------------------------------------------
---------------------------------------------------------
SELECT Customers.CustomerName AS 'Name', Customers.CustomerID AS 'ID', Orders.OrderID AS 'Order'
FROM [Customers]
INNER JOIN [Orders] ON 
Customers.CustomerID = Orders.CustomerID


----------------------------------------------------------------------------
--Select the customer’s name and ID along with order date and item ordered.-
--Show class how to look what is in each table. We will still need to join--
--the customers and orders database where they overlap at the Customer ID.-- 
--Additionally can see we will need to join to OrderDetails to get the -----
--ProductID for the order, then Products to get the ProductName. -----------
----------------------------------------------------------------------------
SELECT Customers.CustomerID AS 'Customer ID', Customers.CustomerName AS 'Customer Name', Products.ProductName AS 'Order', Orders.OrderDate AS 'Date'
FROM [Customers]
INNER JOIN [Orders] ON 
Customers.CustomerID = Orders.CustomerID
INNER JOIN [OrderDetails] ON 
Orders.OrderID = OrderDetails.OrderID
INNER JOIN [Products] ON
OrderDetails.ProductID = Products.ProductID
