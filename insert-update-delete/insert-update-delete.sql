USE northwind;

-- 1.
INSERT INTO suppliers(SupplierID, CompanyName, Region)
VALUES (45, 'The Metal Market', 'USA');

SELECT CompanyName, SupplierID FROM suppliers;

-- 2.
INSERT INTO Products (ProductName, SupplierID, CategoryID, QuantityPerUnit, UnitPrice, UnitsInStock, UnitsOnOrder, ReorderLevel, Discontinued)
VALUES ('Titanium Spork', 45, 1, '10 sporks per box', 19.99, 100, 0, 10, 0);

Select productname, supplierid, categoryid
from products;

-- 3.
SELECT Products.ProductName, Suppliers.CompanyName
FROM Products
JOIN Suppliers ON Products.SupplierID = Suppliers.SupplierID;

-- 4.
 UPDATE Products
SET UnitPrice = UnitPrice * 1.15
WHERE ProductName = 'Titanium Spork';

-- 5.
SELECT Products.ProductName, Products.UnitPrice
FROM Products
JOIN Suppliers ON Products.SupplierID = Suppliers.SupplierID
WHERE Suppliers.CompanyName = 'The Metal Market';

-- 6.
DELETE FROM Products
WHERE ProductName = 'Titanium Spork';

-- 7.
DELETE FROM SUPPLIERS
WHERE SUPPLIERID = 45;

-- 8. 
SELECT * FROM PRODUCTS;

-- 9. 
SELECT * FROM SUPPLIERS;