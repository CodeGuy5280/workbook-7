-- 1.
SELECT 
    Products.ProductID, 
    Products.ProductName, 
    Products.UnitPrice, 
    Categories.CategoryName
FROM 
    Products
JOIN 
    Categories ON Products.CategoryID = Categories.CategoryID
ORDER BY 
    Categories.CategoryName ASC, 
    Products.ProductName ASC;
    
-- 2. 
SELECT 
    Products.ProductID, 
    Products.ProductName, 
    Products.UnitPrice, 
    Suppliers.CompanyName AS SupplierName
FROM 
    Products
JOIN 
    Suppliers ON Products.SupplierID = Suppliers.SupplierID
WHERE 
    Products.UnitPrice > 75
ORDER BY 
    Products.ProductName ASC;

-- 3. 
SELECT 
    Products.ProductID, 
    Products.ProductName, 
    Products.UnitPrice, 
    Categories.CategoryName, 
    Suppliers.CompanyName AS SupplierName
FROM 
    Products
JOIN 
    Categories ON Products.CategoryID = Categories.CategoryID
JOIN 
    Suppliers ON Products.SupplierID = Suppliers.SupplierID
ORDER BY 
    Products.ProductName ASC;

-- 4. 
SELECT 
    Products.ProductName, 
    Categories.CategoryName
FROM 
    Products
JOIN 
    Categories ON Products.CategoryID = Categories.CategoryID
WHERE 
    Products.UnitPrice = (
        SELECT MAX(UnitPrice) FROM Products
    );

-- 5. 
SELECT 
    Orders.OrderID, 
    Orders.ShipName, 
    Orders.ShipAddress, 
    Shippers.CompanyName AS ShippingCompany
FROM 
    Orders
JOIN 
    Shippers ON Orders.ShipVia = Shippers.ShipperID
WHERE 
    Orders.ShipCountry = 'Germany';

-- 6. 
SELECT 
    Orders.OrderID, 
    Orders.OrderDate, 
    Orders.ShipName, 
    Orders.ShipAddress
FROM 
    Orders
JOIN 
    `Order Details` ON Orders.OrderID = `Order Details`.OrderID
JOIN 
    Products ON `Order Details`.ProductID = Products.ProductID
WHERE 
    Products.ProductName = 'Sasquatch Ale';



