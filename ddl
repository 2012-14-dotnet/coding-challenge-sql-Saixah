CREATE TABLE Employee (
ID int,
FirstName varchar(50),
LastName varchar(50),
SSN varchar(11),
DeptID int
);

CREATE TABLE Department (
ID int,
Name varchar(50),
Location varchar(50)
);

CREATE TABLE EmpDetails (
ID int,
EmployeeID varchar(50),
Salary money,
[Address 1] varchar(50),
[Address 2] varchar(50),
City varchar(50),
State varchar(50),
Country varchar(50)
);

ALTER TABLE Employee
ADD FOREIGN KEY (DeptID) REFERENCES Department(ID);

ALTER TABLE EmpDetails
ADD FOREIGN KEY (EmployeeID) REFERENCES Employee(ID);

ALTER TABLE Employee
ADD PRIMARY KEY (ID);

ALTER TABLE Employee
ADD UNIQUE(SSN);

ALTER TABLE EmpDetails
ADD PRIMARY KEY (ID);

ALTER TABLE Department
ADD UNIQUE(ID);

