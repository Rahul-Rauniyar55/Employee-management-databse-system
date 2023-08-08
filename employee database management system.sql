-- Create Employees table
CREATE TABLE Employees (
    EmployeeID INT PRIMARY KEY,
    FirstName VARCHAR(50),
    LastName VARCHAR(50),
    DepartmentID INT,
    Position VARCHAR(50),
    Salary DECIMAL(10, 2),
    HireDate DATE
);

-- Create Departments table
CREATE TABLE Departments (
    DepartmentID INT PRIMARY KEY,
    DepartmentName VARCHAR(50)
);

-- Insert sample data into Departments table
INSERT INTO Departments (DepartmentID, DepartmentName)
VALUES
    (1, 'HR'),
    (2, 'Finance'),
    (3, 'IT'),
    (4, 'Marketing');

-- Insert sample data into Employees table
INSERT INTO Employees (EmployeeID, FirstName, LastName, DepartmentID, Position, Salary, HireDate)
VALUES
    (1, 'John', 'Doe', 3, 'Software Engineer', 75000.00, '2020-01-15'),
    (2, 'Jane', 'Smith', 2, 'Accountant', 60000.00, '2019-05-10'),
    (3, 'Michael', 'Johnson', 1, 'HR Manager', 80000.00, '2018-08-22'),
    (4, 'Emily', 'Williams', 4, 'Marketing Coordinator', 55000.00, '2021-03-02'),
    (5, 'David', 'Brown', 3, 'Database Administrator', 70000.00, '2022-02-18');

-- Query to retrieve all employees and their department names
SELECT 
    e.EmployeeID,
    e.FirstName,
    e.LastName,
    d.DepartmentName,
    e.Position,
    e.Salary,
    e.HireDate
FROM Employees e
INNER JOIN Departments d ON e.DepartmentID = d.DepartmentID;

-- Query to update an employee's position
UPDATE Employees
SET Position = 'Senior Software Engineer'
WHERE EmployeeID = 1;

-- Query to delete an employee
DELETE FROM Employees
WHERE EmployeeID = 5;
