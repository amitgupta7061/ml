-- ==========================================
-- 1. COMMON TABLE EXPRESSIONS (CTEs)
-- ==========================================
-- CTEs make complex queries easier to read

WITH IT_Employees AS (
    SELECT e.EmployeeID, e.FirstName, e.LastName, e.Salary, d.DepartmentName
    FROM Employees e
    JOIN Departments d ON e.DepartmentID = d.DepartmentID
    WHERE d.DepartmentName = 'Engineering'
)
SELECT * FROM IT_Employees WHERE Salary > 70000;

-- ==========================================
-- 2. WINDOW FUNCTIONS
-- ==========================================
-- Perform calculations across a set of table rows related to the current row

-- ROW_NUMBER(): Assigns a unique sequential integer to rows
SELECT FirstName, LastName, Salary,
       ROW_NUMBER() OVER (ORDER BY Salary DESC) AS SalaryRank
FROM Employees;

-- RANK() and DENSE_RANK(): Rank employees by salary within their department
SELECT FirstName, LastName, DepartmentID, Salary,
       RANK() OVER (PARTITION BY DepartmentID ORDER BY Salary DESC) AS DeptRank,
       DENSE_RANK() OVER (PARTITION BY DepartmentID ORDER BY Salary DESC) AS DeptDenseRank
FROM Employees;

-- LEAD() and LAG(): Compare current row's salary with the next/previous row in the result set
SELECT FirstName, Salary,
       LAG(Salary) OVER (ORDER BY HireDate) AS PrevHiredSalary,
       LEAD(Salary) OVER (ORDER BY HireDate) AS NextHiredSalary
FROM Employees;

-- ==========================================
-- 3. VIEWS
-- ==========================================
-- Create a virtual table to simplify complex queries for reuse

CREATE VIEW HighEarners AS
SELECT FirstName, LastName, Salary
FROM Employees
WHERE Salary > 70000;

-- Query the view just like a table
-- SELECT * FROM HighEarners;

-- ==========================================
-- 4. INDEXES
-- ==========================================
-- Improve data retrieval speed on frequently queried columns

CREATE INDEX idx_lastname ON Employees(LastName);

-- ==========================================
-- 5. STORED PROCEDURES & TRIGGERS (Syntax varies by RDBMS - e.g., MySQL / SQL Server)
-- ==========================================

-- Example of creating a simple stored procedure (MySQL/SQL Server style)
/*
CREATE PROCEDURE GetEmployeesByDept (IN deptName VARCHAR(50))
BEGIN
    SELECT e.FirstName, e.LastName
    FROM Employees e
    JOIN Departments d ON e.DepartmentID = d.DepartmentID
    WHERE d.DepartmentName = deptName;
END;
*/

-- Example of calling the procedure
-- CALL GetEmployeesByDept('Engineering');
