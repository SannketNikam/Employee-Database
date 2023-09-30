-- Create Employee database
CREATE DATABASE IF NOT EXISTS employee;

-- Use database
USE employee;

-- Create Department table
CREATE TABLE IF NOT EXISTS Departments (
    DepartmentID INT PRIMARY KEY AUTO_INCREMENT,
    DepartmentName VARCHAR(50)
);

-- Insert data into Departments table
INSERT INTO Departments (DepartmentName)
VALUES
('HR'),
('Finance'),
('Engineering'),
('Sales'),
('Marketing'),
('IT'),
('Operations'),
('Customer Service'),
('Research and Department'),
('Legal'),
('Quality Assurance');

-- Create Employee table
CREATE TABLE IF NOT EXISTS Employees (
    EmployeeID INT PRIMARY KEY AUTO_INCREMENT,
    FirstName VARCHAR(50),
    LastName VARCHAR(50),
    DateOfBirth DATE,
    Gender ENUM("Male", "Female"),
    DepartmentID INT,
    Salary DECIMAL(10, 2),
    HireDate DATE,
    FOREIGN KEY (DepartmentID) REFERENCES Departments (DepartmentID)
    ON DELETE CASCADE
    ON UPDATE CASCADE
);

-- Insert data into Employees table
INSERT INTO Employees
(FirstName, LastName, DateOfBirth, Gender, DepartmentID, Salary, HireDate)
VALUES
('John', 'Smith', '1980-05-15', 'Male', 3, 60000.00, '2020-01-15'),
('Sarah', 'Johnson', '1990-07-20', 'Female', 2, 55000.00, '2019-08-10'),
('Michael', 'Williams', '1985-02-10', 'Male', 3, 62000.00, '2021-03-22'),
('Emily', 'Brown', '1992-11-30', 'Female', 4, 58000.00, '2022-05-18'),
('David', 'Jones', '1988-09-05', 'Male', 5, 65000.00, '2018-12-01'),
('Olivia', 'Davis', '1995-04-12', 'Female', 2, 54000.00, '2023-02-10'),
('James', 'Wilson', '1983-03-25', 'Male', 6, 70000.00, '2017-07-15'),
('Sophia', 'Anderson', '1991-08-17', 'Female', 4, 59000.00, '2019-10-30'),
('Liam', 'Miller', '1979-12-01', 'Male', 3, 61000.00, '2020-11-05'),
('Emma', 'Taylor', '1993-06-28', 'Female', 5, 63000.00, '2022-04-02'),
('Robert', 'Johnson', '1982-09-14', 'Male', 4, 58000.00, '2020-06-15'),
('Mia', 'Moore', '1987-03-03', 'Female', 5, 67000.00, '2019-05-10'),
('William', 'Clark', '1984-04-20', 'Male', 3, 61000.00, '2022-09-12'),
('Charlotte', 'Anderson', '1994-01-07', 'Female', 2, 55000.00, '2019-11-28'),
('Daniel', 'Davis', '1989-08-25', 'Male', 4, 59000.00, '2020-08-03'),
('Sophia', 'Turner', '1990-12-12', 'Female', 5, 64000.00, '2018-10-15'),
('Matthew', 'Parker', '1986-06-08', 'Male', 6, 66000.00, '2022-02-20'),
('Ava', 'Williams', '1993-03-15', 'Female', 2, 57000.00, '2021-04-10');

-- Selecting all employees and departments table
SELECT * FROM Employees;
SELECT * FROM Departments;

-- Finding employees by department id
SELECT * FROM Employees WHERE DepartmentID = 3;

-- Finding employees by department name
SELECT Employees.* FROM Employees INNER JOIN Departments ON Employees.DepartmentID = Departments.DepartmentID
WHERE Departments.DepartmentName = 'IT';

-- Selecting all data from employees and departments table
SELECT * FROM Employees LEFT JOIN Departments ON Employees.DepartmentID = Departments.DepartmentID;

SELECT * FROM Employees LEFT JOIN Departments ON Employees.DepartmentID = Departments.DepartmentID
WHERE Departments.DepartmentName = 'IT';

-- Average Salary
SELECT AVG(salary) FROM Employees;