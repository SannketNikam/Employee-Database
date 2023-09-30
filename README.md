# Employee Database

This project is a simple employee database management system created using SQL. It includes the creation of two tables: `Departments` and `Employees`, along with sample data and several SQL queries to retrieve information. The project is aimed at demonstrating how to set up a basic employee database and perform common operations.

## Table of Contents
- [Database Schema](#database-schema)
- [Sample Data](#sample-data)
- [SQL Queries](#sql-queries)
- [EER Diagram](#eer-diagram)

## Database Schema
### Departments
- `DepartmentID` (INT, Primary Key, Auto Increment) - Unique identifier for departments.
- `DepartmentName` (VARCHAR(50)) - Name of the department.

### Employees
- `EmployeeID` (INT, Primary Key, Auto Increment) - Unique identifier for employees.
- `FirstName` (VARCHAR(50)) - First name of the employee.
- `LastName` (VARCHAR(50)) - Last name of the employee.
- `DateOfBirth` (DATE) - Date of birth of the employee.
- `Gender` (ENUM("Male", "Female")) - Gender of the employee.
- `DepartmentID` (INT, Foreign Key) - Department to which the employee belongs.
- `Salary` (DECIMAL(10, 2)) - Salary of the employee.
- `HireDate` (DATE) - Date when the employee was hired.

## Sample Data
The `Departments` table contains various departments, and the `Employees` table includes sample employee records.

### Departments Table
| DepartmentID | DepartmentName      |
|--------------|---------------------|
| 1            | HR                  |
| 2            | Finance             |
| 3            | Engineering         |
| 4            | Sales               |
| 5            | Marketing           |
| 6            | IT                  |
| 7            | Operations          |
| 8            | Customer Service    |
| 9            | Research and Department |
| 10           | Legal               |
| 11           | Quality Assurance   |

### Employees Table
| EmployeeID | FirstName | LastName  | DateOfBirth | Gender | DepartmentID | Salary    | HireDate  |
|------------|-----------|-----------|-------------|--------|--------------|-----------|-----------|
| 1          | John      | Smith     | 1980-05-15  | Male   | 3            | 60000.00  | 2020-01-15|
| 2          | Sarah     | Johnson   | 1990-07-20  | Female | 2            | 55000.00  | 2019-08-10|
| 3          | Michael   | Williams  | 1985-02-10  | Male   | 3            | 62000.00  | 2021-03-22|
| 4          | Emily     | Brown     | 1992-11-30  | Female | 4            | 58000.00  | 2022-05-18|
| 5          | David     | Jones     | 1988-09-05  | Male   | 5            | 65000.00  | 2018-12-01|
| 6          | Olivia    | Davis     | 1995-04-12  | Female | 2            | 54000.00  | 2023-02-10|
| 7          | James     | Wilson    | 1983-03-25  | Male   | 6            | 70000.00  | 2017-07-15|
| 8          | Sophia    | Anderson  | 1991-08-17  | Female | 4            | 59000.00  | 2019-10-30|
| 9          | Liam      | Miller    | 1979-12-01  | Male   | 3            | 61000.00  | 2020-11-05|
| 10         | Emma      | Taylor    | 1993-06-28  | Female | 5            | 63000.00  | 2022-04-02|
| 11         | Robert    | Johnson   | 1982-09-14  | Male   | 4            | 58000.00  | 2020-06-15|
| 12         | Mia       | Moore     | 1987-03-03  | Female | 5            | 67000.00  | 2019-05-10|
| 13         | William   | Clark     | 1984-04-20  | Male   | 3            | 61000.00  | 2022-09-12|
| 14         | Charlotte | Anderson  | 1994-01-07  | Female | 2            | 55000.00  | 2019-11-28|
| 15         | Daniel    | Davis     | 1989-08-25  | Male   | 4            | 59000.00  | 2020-08-03|
| 16         | Sophia    | Turner    | 1990-12-12  | Female | 5            | 64000.00  | 2018-10-15|
| 17         | Matthew   | Parker    | 1986-06-08  | Male   | 6            | 66000.00  | 2022-02-20|
| 18         | Ava       | Williams  | 1993-03-15  | Female | 2            | 57000.00  | 2021-04-10|

## SQL Queries
The project includes various SQL queries for retrieving information from the database.

- To select all employees and departments:
  ```sql
  SELECT * FROM Employees;
  SELECT * FROM Departments;
  ```

- To find employees by department ID:
  ```sql
  SELECT * FROM Employees WHERE DepartmentID = 3;
  ```

- To find employees by department name (e.g., 'IT'):
  ```sql
  SELECT Employees.* FROM Employees
  INNER JOIN Departments ON Employees.DepartmentID = Departments.DepartmentID
  WHERE Departments.DepartmentName = 'IT';
  ```

- To select all data from employees and departments with department information:
  ```sql
  SELECT * FROM Employees
  LEFT JOIN Departments ON Employees.DepartmentID = Departments.DepartmentID;
  ```

- To select all data from employees and departments for a specific department (e.g., 'IT'):
  ```sql
  SELECT * FROM Employees
  LEFT JOIN Departments ON Employees.DepartmentID = Departments.DepartmentID
  WHERE Departments.DepartmentName = 'IT';
  ```

- To calculate the average salary of all employees:
  ```sql
  SELECT AVG(salary) FROM Employees;
  ```

## EER-Diagram
![ER Diagram of Employee to Departments](https://github.com/SannketNikam/employee_database/assets/77570082/0bbbdbb3-00ab-4acf-97f7-5f93a5f3697e)
