--------------------------------------------------------------------------
-- PARTITION BY PRACTICE 

--VIEW DATA
Select * from EmployeeDemographics
Select * from EmployeeSalary

--JOIN/PARITION BY
--ABLE TO MAINTAIN ALL COLUMNS AND CREATE AGGREGATE COLUMN 
Select FirstName, LastName, Gender, Salary, COUNT(Gender) OVER (PARTITION BY GENDER) AS TotalGender
from EmployeeDemographics AS dem
JOIN EmployeeSalary AS sal
	ON dem.EmployeeID = sal.EmployeeID

--VS A GROUP BY
--HERE WE MUST GET RID OF THE OTHER COLUMNS
Select Gender, COUNT(Gender)
from EmployeeDemographics AS dem
JOIN EmployeeSalary AS sal
	ON dem.EmployeeID = sal.EmployeeID
GROUP BY Gender
--------------------------------------------------------------------------
--END