CREATE TABLE Department (
  DepartmentID INT IDENTITY(1, 1) PRIMARY KEY,
  Name VARCHAR NOT NULL UNIQUE CHECK (LEN(Name) >= 10),
  Location VARCHAR(100) NULL,
  Budget DECIMAL(20, 2) NOT NULL CHECK (Budget > 0),
  HasPrinter BIT NOT NULL
);

CREATE TABLE Employee (
  EmployeeID INT IDENTITY(1, 1) PRIMARY KEY,
  Name VARCHAR(100) NOT NULL CHECK (LEN(Name) > 0),
  Salary DECIMAL(10, 2) NOT NULL CHECK (Salary > 0),
  DateOfBirth DATE NULL,
  DepartmentID INT NOT NULL,
  FOREIGN KEY (DepartmentID) REFERENCES Department(DepartmentID)
);
