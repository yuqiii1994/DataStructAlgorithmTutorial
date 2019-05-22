-- Suppose that a website contains two tables, the Customers table and the Orders table. Write a SQL query to find all customers who never order anything.
/* Write your T-SQL query statement below */
SELECT Name AS Customers FROM
(SELECT Name, CustomerId FROM 
 Customers LEFT JOIN Orders ON 
 Customers.Id=Orders.CustomerId) AS boughtCust
 WHERE boughtCust.CustomerId IS NULL

-- The second solution
SELECT customers.name AS Customers
FROM customers
WHERE customers.id NOT IN
(
    SELECT customerid FROM orders
);