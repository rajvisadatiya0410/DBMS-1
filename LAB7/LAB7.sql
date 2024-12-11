--LAB-07--

CREATE TABLE EMP(

  EID INT,
  ENAME VARCHAR(20),
  DEPARTMENT VARCHAR(20),
  SALARY INT ,
  JOINING_DATE DATETIME,
  CITY VARCHAR(20)
);

INSERT INTO EMP(EID,ENAME,DEPARTMENT,SALARY,JOINING_DATE,CITY)
VALUES
(101,'RAHUL','ADMIN',56000,'1-JAN-90','RAJKOT'),
(102,'HARDIK','IT',18000,'25-SEP-90','AHMEDABAD'),
(103,'BHAVIN','HR',25000,'14-MAY-91','BARODA'),
(104,'BHOOMI','ADMIN',39000,'8-FEB-91','RAJKOT'),
(105,'ROHIT','IT',17000,'23-JUL-90','JAMNAGAR'),
(106,'PRIYA','IT',9000,'18-OCT-90','AHMEDABAD'),
(107,'BHOOMI','HR',34000,'25-DEC-91','RAJKOT')

SELECT * FROM EMP

--PART:A--

--1. Display the Highest, Lowest, Label the columns Maximum, Minimum respectively.--
SELECT MAX(SALARY) AS Maximum, MIN(SALARY) AS Minimum FROM EMP;

--2. Display Total, and Average salary of all employees. Label the columns Total_Sal and Average_Sal,respectively.
SELECT SUM(SALARY) AS Total_Sal, AVG(SALARY) AS Average_Sal FROM EMP;

--3.Find the total number of employess of EMPLYOEE table.
SELECT COUNT(*) AS Total_Employees FROM EMP;

--4.Find the highest salary from Rajkot city.
SELECT MAX(SALARY) AS Highest_Salary_Rajkot FROM EMP WHERE City = 'Rajkot';

--5.Give Maximum salary from IT department.
SELECT MAX(SALARY) AS Max_Salary_IT FROM EMP WHERE Department = 'IT';

--6.Count employee whose joining date is after 8-feb-91.
SELECT COUNT(*) AS Employees_Joined_After_Feb8 FROM EMP WHERE JOINING_DATE > '8-2-91';

--7.Display average salary of admin department.
SELECT AVG(SALARY) AS Avg_Salary_Admin FROM EMP WHERE Department = 'Admin';

--8.Display total salary of HR department.
SELECT SUM(SALARY) AS Total_Salary_HR FROM EMP WHERE Department = 'HR';

--9.Count total number of cities of employee without duplication
SELECT COUNT(DISTINCT CITY) AS Unique_Cities FROM EMP;

--10.Count unique department.
SELECT COUNT(DISTINCT DEPARTMENT) AS Unique_Departments FROM EMP;

--11.Give minimum salary ofemployee who belong t ahemdabad.
SELECT MIN(SALARY) AS Min_Salary_Ahmedabad FROM EMP WHERE City = 'Ahmedabad';

--12.Find ity wise highest salary.
SELECT City, MAX(SALARY) AS Highest_Salary FROM EMP GROUP BY City;

--13.Find dapartment wise lowest salary.
SELECT Department, MIN(SALARY) AS Lowest_Salary FROM EMP GROUP BY Department;

--14.Display city with the total number of employess belonging to each city.
SELECT City, COUNT(*) AS Employees_Count FROM EMP GROUP BY City;

--15.Give total salary of each department of EMP table.
SELECT Department, SUM(SALARY) AS Total_Salary FROM EMP GROUP BY Department;

--16. Give average salary of each department of EMP table without displaying the respective department name.

SELECT AVG(SALARY) AS Avg_Salary FROM EMP GROUP BY Department;



--PART:B--

--1.Count the number of employess living in rajkot.
SELECT COUNT(CITY) AS COUNT FROM EMP WHERE CITY='RAJKOT';

--2. Display the difference between the highest and lowest salaries. Label the column DIFFERENCE.
SELECT MAX(SALARY) - MIN(SALARY) AS Difference FROM EMP;

--3.Display the total number of employees hired before 1st January, 1991.
SELECT COUNT(*) AS Employees_Hired_Before_1991 FROM EMP WHERE JOINING_DATE < '1991-01-01';



--PART:C--


--1.Count the number of employees living in Rajkot or Baroda.
SELECT COUNT(ENAME)AS COUNT FROM EMP WHERE CITY='RAJKOT' OR CITY='BARODA';

--2.Display the total number of employees hired before 1st January, 1991 in IT department.
SELECT COUNT(*) AS Employees_Hired_Before_1991
FROM EMP
WHERE JOINING_DATE < '1991-01-01' AND DEPARTMENT = 'IT';

--3. Find the Joining Date wise Total Salaries.
SELECT JOINING_DATE, SUM(SALARY) AS Total_Salary
FROM EMP
GROUP BY JOINING_DATE;

--4. Find the Maximum salary department & city wise in which city name starts with ‘R’.
SELECT DEPARTMENT, CITY, MAX(SALARY) AS Max_Salary
FROM EMP
WHERE CITY LIKE 'R%'
GROUP BY DEPARTMENT, CITY;



