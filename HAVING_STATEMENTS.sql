--------------------------------------------------------------------------
--HAVING CLAUSE PRACTICE

--ERROR
SELECT JobTitle, Count(JobTitle)
From EmployeeDemographics
JOIN EmployeeSalary 
	on EmployeeDemographics.EmployeeID = EmployeeSalary.EmployeeID
WHERE Count (JobTitle) > 1 
Group by JobTitle

--NOTE: HAVING STATEMENT MUST GO AFTER GROUP BY STATEMENT 
SELECT JobTitle, Count(JobTitle)
From EmployeeDemographics
JOIN EmployeeSalary 
	on EmployeeDemographics.EmployeeID = EmployeeSalary.EmployeeID 
Group by JobTitle
HAVING Count (JobTitle) > 1

--INITIAL VIEW 
SELECT JobTitle, AVG(Salary)
From EmployeeDemographics
JOIN EmployeeSalary 
	on EmployeeDemographics.EmployeeID = EmployeeSalary.EmployeeID 
Group by JobTitle
Order BY AVG(Salary)
--HAVING Count (JobTitle) > 1

--INSERT HAVING STATEMENT 
SELECT JobTitle, AVG(Salary)
From EmployeeDemographics
JOIN EmployeeSalary 
	on EmployeeDemographics.EmployeeID = EmployeeSalary.EmployeeID 
Group by JobTitle
HAVING AVG (Salary) > 40000
Order BY AVG(Salary)
--------------------------------------------------------------------------
--END