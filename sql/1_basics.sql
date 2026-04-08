-- ==========================================
-- 1. DDL (DATA DEFINITION LANGUAGE)
-- ==========================================

-- Create a new database (if applicable in your RDBMS)
CREATE DATABASE IF NOT EXISTS CompanyDB;
USE CompanyDB;

-- Create a table for Departments
CREATE TABLE Departments (
    DepartmentID INT PRIMARY KEY,
    DepartmentName VARCHAR(50) NOT NULL
);

-- Create a table for Employees with a Foreign Key
CREATE TABLE Employees (
    EmployeeID INT PRIMARY KEY,
    FirstName VARCHAR(50) NOT NULL,
    LastName VARCHAR(50) NOT NULL,
    Age INT,
    HireDate DATE,
    Salary DECIMAL(10, 2) DEFAULT 50000,
    DepartmentID INT,
    FOREIGN KEY (DepartmentID) REFERENCES Departments(DepartmentID)

    CONSTRAINT ageCheck CHECK (age >= 18)
);

-- Alter table to add a new column
ALTER TABLE Employees ADD Email VARCHAR(100);

-- ==========================================
-- 2. DML (DATA MANIPULATION LANGUAGE)
-- ==========================================

-- Insert data into Departments
INSERT INTO Departments (DepartmentID, DepartmentName) VALUES 
(1, 'Human Resources'),
(2, 'Engineering'),
(3, 'Marketing');

-- Insert data into Employees
INSERT INTO Employees (EmployeeID, FirstName, LastName, Age, HireDate, Salary, DepartmentID, Email) VALUES 
(101, 'John', 'Doe', 28, '2020-01-15', 60000.00, 2, 'john.doe@company.com'),
(102, 'Jane', 'Smith', 32, '2019-03-22', 75000.00, 2, 'jane.smith@company.com'),
(103, 'Sam', 'Brown', 45, '2015-11-10', 50000.00, 1, 'sam.brown@company.com'),
(104, 'Lisa', 'White', 29, '2021-06-05', 65000.00, 3, 'lisa.white@company.com');

-- Update data
UPDATE Employees 
SET Salary = 65000.00 
WHERE EmployeeID = 101;

-- Delete data (Example: Deleting a specific employee)
-- DELETE FROM Employees WHERE EmployeeID = 104;

-- ==========================================
-- 3. DQL (DATA QUERY LANGUAGE) - BASICS
-- ==========================================

-- Select all columns from a table
SELECT * FROM Employees;

-- Select specific columns
SELECT FirstName, LastName, Salary FROM Employees;

-- select distinct values
SELECT DISTINCT DepartmentID FROM Employees;

-- Filtering with WHERE
SELECT * FROM Employees WHERE Age > 30;

-- Using AND, OR
SELECT * FROM Employees WHERE DepartmentID = 2 AND Salary > 60000;

-- Pattern matching with LIKE (% represents zero, one, or multiple characters)
SELECT * FROM Employees WHERE LastName LIKE 'S%';

-- Sorting results with ORDER BY
SELECT * FROM Employees ORDER BY Salary DESC;
