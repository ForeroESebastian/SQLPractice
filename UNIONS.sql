-----------------------------------------------------
--CREATE TABLE
--DROP TABLE WareHouseEmployeeDemographics
Create Table WareHouseEmployeeDemographics
(EmployeeID int, FirstName VARCHAR(25), LastName VARCHAR(25), Age int, Gender  VARCHAr(25))
insert INTO WareHouseEmployeeDemographics
Values (1050, 'Roy', 'Anderson', 31, 'Male'),
(1051, 'Hidetoshi', 'Hasagawa', 40, 'Male'),
(1052, 'Val', 'Johnson', 31, 'Feale'),
(1013, 'Darryl', 'Philbin', NULL, 'Male')

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

Create Table EmployeeSalary
(EmployeeID int, JobTitle VARCHAR(25), Salary int)
insert INTO EmployeeSalary
Values (1001, 'Salesman', 45000),
(1002, 'Receptionist', 36000),
(1003, 'Salesman', 63000),
(1004, 'Accountant', 47000),
(1005, 'HR', 50000),
(1006, 'Regional Manager', 65000),
(1007, 'Supplier', 41000),
(1008, 'Salesman', 48000),
(1009, 'Accountant', 42000),
(1010, NULL, 47000),
(Null, 'Salesman', 43000)

--LET'S VIEW THE DATA
--BEFORE
select * from EmployeeDemographics
select * from WareHouseEmployeeDemographics

--CREATING UNION 
--UNION ACTS AS A DISTINCT STATEMENT AND REMOVES THE DUPLICATE "DARRYL PHILBIN"
select * from EmployeeDemographics
UNION
select * from WareHouseEmployeeDemographics

--UNION ALL IS NOW SHOWING "ALL" OF THE DATA
select * from EmployeeDemographics
UNION ALL
select * from WareHouseEmployeeDemographics

--LETS LOOK AT TWO DIFFERENT TABLES 
Select EmployeeID, FirstName, Age
from Employeedemographics 
Select EmployeeID, JobTitle, Salary
from EmployeeSalary
order by EmployeeID

--NOW WE WILL CREATE A UNION BETWEEN THEM 
--NOTE: MUST BE CAREFUL WHEN CREATING A UNION BETWEEN TABLES, AS WE CAN SEE SALARY DATA IS BEING
--INPUTTED INTO THE AGE COLUMN FROM THE OUTPUT BELOW 
Select EmployeeID, FirstName, Age
from Employeedemographics 
UNION
Select EmployeeID, JobTitle, Salary
from EmployeeSalary
order by EmployeeID

---END