INSERT INTO Department (Name,Location)
VALUES('Hardware','Chicago'),('Software', 'NewYork'),('IT', 'San Francisco');

INSERT INTO Employee (FirstName,LastName,SSN,DeptID)
VALUES
('Barack','Obama','123-12-1223',(Select ID from Department WHERE Name = 'Software')),
('Bill','Clinton','132-43-1334',(Select ID from Department WHERE Name = 'Hardware')),
('George','Bush','234-12-1223',(Select ID from Department WHERE Name = 'IT'));

INSERT INTO EmpDetails(EmployeeID,Salary,[Address 1],[Address 2],City,State,Country)
VALUES
((Select ID from Employee Where FirstName = 'Barack'),60000,'504 MaryLane','Newyork','Newyork','USA'),
((Select ID from Employee Where FirstName = 'Bill'),70000,'504 MaryLane','Newyork','Newyork','USA'),
((Select ID from Employee Where FirstName = 'George'),1,'504 MaryLane','Newyork','Newyork','USA');

INSERT INTO Employee(FirstName,LastName,SSN,DeptID)
VALUES
('Tina','Smith','134-13-1345',(Select ID from Department WHERE Name = 'Software'))

INSERT INTO EmpDetails(EmployeeID,Salary,[Address 1],[Address 2],City,State,Country)
VALUES
((Select ID from Employee Where FirstName = 'Tina'),60000,'504 MaryLane','Newyork','Newyork','USA');

INSERT INTO Department(Name,Location)
VALUES
('Marketing','Houston');

SELECT * 
FROM Employee 
WHERE DeptID = 
	(Select ID 
	From Department 
	Where Name = 'Marketing');

SELECT SUM(Salary)
FROM EmpDetails
INNER JOIN Employee ON EmpDetails.EmployeeID = Employee.ID
WHERE Employee.DeptID = 
	(Select ID 
	From Department 
	Where Name = 'Marketing')
GROUP BY Salary;

SELECT COUNT(ID)
FROM Employee
WHERE DeptID = 
	(Select ID 
	From Department 
	Where Name = 'Marketing')
GROUP BY ID;
