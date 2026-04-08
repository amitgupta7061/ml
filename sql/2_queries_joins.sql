-- ==========================================
-- 1. AGGREGATE FUNCTIONS
-- ==========================================

-- Count total number of employees
SELECT COUNT(*) AS TotalEmployees FROM Employees;

-- Find maximum and minimum salary
SELECT MAX(Salary) AS HighestSalary, MIN(Salary) AS LowestSalary FROM Employees;

-- Calculate average salary
SELECT AVG(Salary) AS AverageSalary FROM Employees;

-- ==========================================
-- 2. GROUPING DATA (GROUP BY & HAVING)
-- ==========================================

-- Count employees per department
SELECT DepartmentID, COUNT(*) AS EmployeeCount 
FROM Employees 
GROUP BY DepartmentID;

-- Find departments with average salary > 60000
SELECT DepartmentID, AVG(Salary) AS AvgSalary 
FROM Employees 
GROUP BY DepartmentID 
HAVING AVG(Salary) > 60000;

-- ==========================================
-- 3. JOINS
-- ==========================================

-- INNER JOIN: Retrieve employees and their department names
SELECT e.FirstName, e.LastName, d.DepartmentName 
FROM Employees e
INNER JOIN Departments d ON e.DepartmentID = d.DepartmentID;

-- LEFT JOIN: Retrieve all departments, and employees if any exist
SELECT d.DepartmentName, e.FirstName, e.LastName
FROM Departments d
LEFT JOIN Employees e ON d.DepartmentID = e.DepartmentID;

-- ==========================================
-- 4. SUBQUERIES
-- ==========================================

-- Find employees who earn more than the average salary
SELECT FirstName, LastName, Salary 
FROM Employees 
WHERE Salary > (SELECT AVG(Salary) FROM Employees);

-- Find employees working in 'Engineering' using a subquery
SELECT FirstName, LastName 
FROM Employees 
WHERE DepartmentID IN (SELECT DepartmentID FROM Departments WHERE DepartmentName = 'Engineering');
