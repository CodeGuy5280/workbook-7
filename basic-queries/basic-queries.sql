USE northwind;

-- 1. products
SELECT * FROM categories;
-- 2. 
SELECT productid, productname, unitprice
FROM products;

-- 3. 
SELECT productid, productname, unitprice
FROM products ORDER BY unitprice ASC;

-- 4. Geitost, Guaran Fantstica, Konbu, Filo Mix, Tourtire
SELECT productid, productname, unitprice
FROM products WHERE UNITPRICE <= 7.50;

-- 5. 
SELECT productid, productname, unitprice, QUANTITYPERUNIT
FROM products WHERE quantityperunit >= 100 ORDER BY unitprice DESC;

-- 6.
SELECT productid, productname, unitprice, QUANTITYPERUNIT
FROM products WHERE quantityperunit >= 100 ORDER BY unitprice DESC;

-- 7. 
SELECT productname, unitsinstock, reorderlevel
FROM products WHERE unitsinstock = 0 AND reorderlevel >=1 ORDER BY productname;

-- 8. PRODUCTS

-- 9. SEAFOOD = 8
SELECT * FROM CATEGORIES;

-- 10. TYPE CATEGORY = PRODUCTNAME

-- 11. 
SELECT * FROM EMPLOYEES;

-- 12. 1 MANAGER W/ EMPLOYEE ID: 5
SELECT DISTINCT TITLE, EMPLOYEEID FROM EMPLOYEES;

-- 13. 
SELECT DISTINCT TITLE FROM EMPLOYEES;

-- 14. VICE PRESIDENT SALES, SALES REPRESENTATIVE (X2), INSIDE SALES COORDINATOR
SELECT TITLE, SALARY FROM EMPLOYEES
WHERE SALARY BETWEEN 2000 AND 2500;

-- 15. 
SELECT * FROM SUPPLIERS;

-- 16. 
SELECT PRODUCTID, PRODUCTNAME, SUPPLIERID 
FROM PRODUCTS
JOIN SUPPLIERS ON PRODUCTS.SUPPLIERID = SUPPLIERS.SUPPLIERID
WHERE COMPANYNAME = "TOKYO TRADERS";
