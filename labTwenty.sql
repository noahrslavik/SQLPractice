--1
SELECT * FROM Customers;

--2
SELECT distinct Country FROM Customers;

--3
SELECT * FROM Customers WHERE CustomerID LIKE 'BL%';

--4
 SELECT * FROM orders LIMIT 100;
 
--5
 SELECT * FROM Customers WHERE PostalCode = '1010' OR '3012' OR '12209' or '05203';

--6
 SELECT * FROM orders WHERE ShipRegion <> NULL;
 
 --7
 SELECT Country, City FROM customers ORDER BY Country,City;
 
 --8
 insert into customers(CustomerID, CompanyName, ContactName, ContactTitle, Address,City,Region, PostalCode, Fax, Image, ImageThumbnail ) Values('10', 'Ypsilanti', 'Noah','Sir', '201 N Huron', 'Washtenaw', '48917', 'US', '9899288211', 'asd', '' ,'')

 --9
 update orders set ShipCountry = 'EuroZone' WHERE ShipCountry = 'France';
 
 --10
 delete from `order details` where Quantity = '1';

 --11
  SELECT MAX(Quantity) FROM `order details`;
SELECT MIN(Quantity) FROM `order details`;
SELECT AVG(Quantity) FROM `order details`;

 
 --12
 SELECT MAX(Quantity) FROM `order details` group by OrderId;
SELECT MIN(Quantity) FROM `order details` group by OrderId;
SELECT AVG(Quantity) FROM `order details` group by OrderId;

 --13 
 Select CustomerID FROM orders WHERE OrderID = '10290';

 --14
 SELECT * FROM orders
INNER JOIN customers ON  orders.CustomerID = customers.CustomerID

SELECT * FROM orders
LEFT JOIN customers ON  orders.CustomerID = customers.CustomerID

SELECT * FROM orders
 RIGHT JOIN customers ON  orders.CustomerID = customers.CustomerID
 
 --15
Select ShipCity, ShipCountry FROM orders
INNER JOIN employees ON orders.EmployeeID = employees.EmployeeID
WHERE employees.City = 'London';
 --16
 DISTINCT orders.ShipName FROM orders LEFT JOIN orderdetails ON order.OrderID = orderdetails.OrderID LEFT JOIN prodcuts ON
 orderDetails.ProductID = products.ProductID WHERE products.Discontinued = '1' ORDER BY orders.ShipName ASC;
 
 --17
 SELECT FirstName FROM employees WHERE ReportsTo = null;
 
 --18
  SELECT LastName FROM employees WHERE ReportsTo = '2';
 
 
 