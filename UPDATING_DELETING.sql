--------------------------------------------------------------------------
--UPDATING/DELETING PRACTICE
--CREATE TABLE
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

--VIEW TABLE
Select *
from EmployeeDemographics

--LET'S FIX HOLLY 
UPDATE EmployeeDemographics
SET EmployeeID = 1012
WHERE FirstName = 'Holly' AND LastName = 'Flax'

--CHECK THE TABLE....NICE!
Select *
from EmployeeDemographics

--NOW LET'S FIX THE REST OF HOLLY'S DATA 
UPDATE EmployeeDemographics
SET Age = 31, Gender = 'Female'
WHERE FirstName = 'Holly' AND LastName = 'Flax'

--CHECK AGAIN
Select *
from EmployeeDemographics

--LET'S DELETE NOW 
-- NOTE THERE IS NO WAY TO REVERT A DELETE STATEMENT 
DELETE FROM EmployeeDemographics
WHERE EMployeeID = 1005 

--CHECK AGAIN
Select *
from EmployeeDemographics

--LET'S BRING OUR TABLE BACK TO NORMAL 
INSERT INTO EmployeeDemographics (EmployeeID, FirstName, LastName, Age, Gender)
VALUES (1005,'Holly', 'Flax', 31,'Female')

--CHECK AGAIN
Select *
from EmployeeDemographics
--------------------------------------------------------------------------
--END