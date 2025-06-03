-- 1. 
SELECT ProductName, UnitPrice
FROM Products
WHERE UnitPrice = (
    SELECT MAX(UnitPrice)
    FROM Products);
    
-- 2. 
SELECT ORDERID, SHIPNAME, SHIPADDRESS
FROM ORDERS 
WHERE SHIPVIA = (
SELECT SHIPPERID
FROM SHIPPERS
WHERE COMPANYNAME = 'FEDERAL SHIPPING');

-- 3. 
SELECT OrderID
FROM `Order Details`
WHERE ProductID = (
    SELECT ProductID
    FROM Products
    WHERE ProductName = 'Sasquatch Ale'
);

-- 4. 
SELECT FirstName, LastName
FROM Employees
WHERE EmployeeID = (
    SELECT EmployeeID
    FROM Orders
    WHERE OrderID = 10266
);

-- 5. 
SELECT CompanyName
FROM Customers
WHERE CustomerID = (
    SELECT CustomerID
    FROM Orders
    WHERE OrderID = 10266
);
