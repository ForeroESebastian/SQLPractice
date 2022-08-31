----------------------------------------------------------------------
--CASE STATEMENT PRACTICE
Create Table EmployeeDemographics
(EmployeeID int, FirstName VARCHAR(25), LastName VARCHAR(25), Age int, Gender  VARCHAr(25))
insert INTO EmployeeDemographics
Values (1001, 'Jim', 'Halpert', 30, 'Male'),
(1002, 'Pam', 'Beasley', 30, 'Female'),
(1003, 'Dwight', 'Schrute', 29, 'Male'),
(1004, 'Angela', 'Martin', 31, 'Female'),
(1005, 'Toby', 'Flenderson', 32, 'Male'),
(1006, 'Michael', 'Scott', 35, 'Male'),
(1007, 'Meredith', 'Palmer', 32, 'Female'),
(1008, 'Stanley', 'Hudson', 38, 'Male'),
(1009, 'Kevin', 'Malone', 31, 'Male'),
(1011, 'Ryan', 'Howard', 26, 'Male'),
(Null, 'Holly', 'Flax', NULL, NULL),
(1013, 'Darryl', 'Philbin', NULL, 'Male')
--TEST 1
Select FirstName, LastName, Age,
CASE
	WHEN AGE >30 THEN 'OLD'
	ELSE 'YOUNG'
END 
from EmployeeDemographics
Where age is not null 
order by age 
--TEST 2
Select FirstName, LastName, Age,
CASE
	WHEN AGE >30 THEN 'Old'
	WHEN Age Between 27 and 30 THEN 'Young'
	ELSE 'Baby'
END 
from EmployeeDemographics
Where age is not null 
order by age
--TEST 3 
-- NOTICE STANLEY IS NOT IDENTIFIED
Select FirstName, LastName, Age,
CASE
	WHEN AGE >30 THEN 'Old'
	WHEN Age = 38 THEN 'STANLEY'
	ELSE 'Baby'
END 
from EmployeeDemographics
Where age is not null 
order by age
--TEST 4 
--HERE WE CHANGE THE ORDER SO THAT STANLEY IS ASSIGNED FIRST 
Select FirstName, LastName, Age,
CASE
	WHEN Age = 38 THEN 'STANLEY'
	WHEN AGE >30 THEN 'Old'
	ELSE 'Baby'
END 
from EmployeeDemographics
Where age is not null 
order by age

--PROBLEM: THE COMPANY IS DECIDING TO REWARDS THE TEAM WITH RAISES BUT THE SALESMAN WILL 
-- BE GIVEN THE HIHEST RAISES. SOLVE. 
Select FirstName, LastName, JobTitle, Salary,
CASE 
	WHEN JobTitle = 'Salesman' THEN (Salary * 1.10)
	WHEN JobTitle = 'Accountant' THEN (Salary * 1.05)
	WHEN JobTitle = 'HR' THEN (Salary * 1.000001)
	ELSE (Salary * 1.03)
END AS SalaryAfterRaise
From EmployeeDemographics
JOIN EmployeeSalary
	on EmployeeDemographics.EmployeeID = EmployeeSalary.EmployeeID
----------------------------------------------------------------------
--END

