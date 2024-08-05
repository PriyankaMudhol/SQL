1) CREATE 2 TABLES WITH 5 COLUMNS
2) INSERT 10 DATA FOR EACH TABLE.
3) USE CONSTRAINTS FOR ALL COLUMNS.
4) USE BETWEEN TO FETCH DATA.
5) USE LIKE TO CHECK PATTERN.
6) USE ORDER BY FOR SORTING THE DATA.
7) USE UPPER, LOWER CONCAT, LENGTH FUNCTIONS.
8) CREATE INDEX FOR ANY COLUMN AND FETCH DATA.


create database employees;
use employees;

CREATE TABLE Employees (
    EmployeesID INT PRIMARY KEY,
    FirstName VARCHAR(50) NOT NULL,
    LastName VARCHAR(50) NOT NULL,
    Age INT CHECK (Age > 18),
    DepartmentID INT,
    FOREIGN KEY (DepartmentID) REFERENCES Departments(DepartmentID)
);
   
   

CREATE TABLE Departments (
    DepartmentID INT PRIMARY KEY,
    DepartmentName VARCHAR(100) NOT NULL,
    Location VARCHAR(100),
    EstablishedYear INT CHECK (EstablishedYear >= 1900),
    Manager VARCHAR(50)
);

INSERT INTO Employees (EmployeesID, FirstName, LastName, Age, DepartmentID)
VALUES
(1, 'Sakshi', 'Patil', 30, 1),
(2, 'Janu', 'vagmore', 25, 2),
(3, 'heena', 'Davangere', 35, 3),
(4, 'Mahima', 'Patil', 40, 1),
(5, 'Chiru', 'ballolli', 28, 2),
(6, 'Jaguu', 'Gowda', 22, 3),
(7, 'Danu', 'Math', 27, 1),
(8, 'Lalit', 'Khilare', 33, 2),
(9, 'David', 'Ansari', 26, 3),
(10, 'Sara', 'Hiremath', 29, 1);

INSERT INTO Departments (DepartmentID, DepartmentName, Location, EstablishedYear, Manager)
VALUES
(1, 'HR', 'New York', 2000, 'Alice Green'),
(2, 'IT', 'San Francisco', 2005, 'Bob White'),
(3, 'Finance', 'Chicago', 2010, 'Carol Black'),
(4, 'Marketing', 'Los Angeles', 2008, 'Dave Blue'),
(5, 'Sales', 'Seattle', 2015, 'Eve Purple'),
(6, 'Customer Support', 'Boston', 2012, 'Frank Red'),
(7, 'Research & Development', 'Austin', 2011, 'Grace Yellow'),
(8, 'Logistics', 'Miami', 2013, 'Hank Orange'),
(9, 'Legal', 'Washington', 2009, 'Ivy Brown'),
(10, 'Public Relations', 'Denver', 2016, 'Jack Violet');


SELECT * FROM Employees
WHERE Age BETWEEN 25 AND 30;

SELECT * FROM Employees
WHERE FirstName LIKE 'J%';

SELECT * FROM Employees
ORDER BY LastName desc;

SELECT * FROM Employees
ORDER BY LastName asc;

SELECT UPPER(FirstName) AS UpperFirstName, LOWER(LastName) AS LowerLastName,
       CONCAT(FirstName, ' ', LastName) AS FullName,
       LENGTH(FirstName) AS FirstNameLength
FROM Employees;

CREATE INDEX idx_lastname ON Employees (LastName);

SELECT * FROM Employees
WHERE LastName = 'Ansari';




















