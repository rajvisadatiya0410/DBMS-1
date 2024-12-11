------------------------lab:12-------------------

-------------PART:A------------------

----------------------------------------LAB-12----------------------------
CREATE TABLE PERSON
(
       PersonID Int Primary Key,
       PersonName Varchar (100) Not Null,
       DepartmentID Int Foreign Key REFERENCES DEPT(DepartmentID) NULL,
       Salary Decimal(8,2) Not Null,
       JoiningDate Datetime Not Null,
       City Varchar(100) Not Null,
)
--DROP TABLE PERSON
--DROP TABLE DEPT

INSERT INTO PERSON
VALUES
(101, 'Rahul Tripathi', 2, 56000, '01-JAN-2000',' Rajkot'),
(102,' Hardik Pandya', 3, 18000, '25-SEP-2001',' Ahmedabad'),
(103, 'Bhavin Kanani', 4 ,25000 ,'14-MAY-2000 ','Baroda'),
(104, 'Bhoomi Vaishnav', 1 ,39000 ,'08-FEB-2005',' Rajkot'),
(105 ,'Rohit Topiya', 2 ,17000 ,'23-JUL-2001' ,'Jamnagar'),
(106, 'Priya Menpara', NULL, 9000,' 18-OCT-2000' ,'Ahmedabad'),
(107 ,'Neha Sharma' ,2, 34000 ,'25-DEC-2002' ,'Rajkot'),
(108, 'Nayan Goswami', 3 ,25000,' 01-JUL-2001' ,'Rajkot'),
(109 ,'Mehul Bhundiya' ,4, 13500 ,'09-JAN-2005 ','Baroda'),
(110, 'Mohit Maru', 5 ,14000,' 25-MAY-2000',' Jamnagar')





---------------PART-A------------
--1. Find all persons with their department name & code.
SELECT PERSON.PersonName,DEPT.DepartmentCode,DEPT.DepartmentName 
FROM PERSON
JOIN DEPT
ON PERSON.DepartmentID=DEPT.DepartmentID

--2. Find the person's name whose department is in C-Block.
SELECT PERSON.PersonName,DEPT.Location 
FROM PERSON
JOIN DEPT
ON PERSON.DepartmentID=DEPT.DepartmentID
WHERE DEPT.Location='C-Block'


--3. Retrieve person name, salary & department name who belongs to Jamnagar city.
SELECT PERSON.PersonName,DEPT.DepartmentName ,PERSON.Salary 
FROM PERSON
JOIN DEPT
ON PERSON.DepartmentID=DEPT.DepartmentID
where PERSON.City='Jamnagar'

--4. Retrieve person name, salary & department name who does not belong to Rajkot city.

SELECT PERSON.PersonName,DEPT.DepartmentName ,PERSON.Salary 
FROM PERSON
JOIN DEPT
ON PERSON.DepartmentID=DEPT.DepartmentID
where PERSON.City!='Rajkot'

--5. Retrieve person’s name of the person who joined the Civil department after 1-Aug-2001.
SELECT PERSON.PersonName,DEPT.DepartmentName 
FROM PERSON
JOIN DEPT
ON PERSON.DepartmentID=DEPT.DepartmentID
where DEPT.DepartmentName='Civil' AND PERSON.JoiningDate>'1-Aug-2001'

--6. Find details of all persons who belong to the computer department.
SELECT *
FROM PERSON
JOIN DEPT
ON PERSON.DepartmentID=DEPT.DepartmentID
WHERE DEPT.DepartmentName='Computer'


--7. Display all the person's name with the department whose joining date difference with the current date is more than 365 days.
SELECT PERSON.PersonName,  PERSON.JoiningDate
FROM PERSON
JOIN DEPT
ON PERSON.DepartmentID=DEPT.DepartmentID
WHERE  DATEDIFF(DAY,PERSON.JoiningDate,GETDATE())>365

--8. Find department wise person counts.
SELECT COUNT(PERSON.PersonID),DEPT.DepartmentName
FROM PERSON
JOIN DEPT
ON PERSON.DepartmentID=DEPT.DepartmentID
GROUP BY DEPT.DepartmentName

--9. Give department wise maximum & minimum salary with department name.
SELECT MAX(PERSON.Salary),MIN(PERSON.Salary),DEPT.DepartmentName
FROM PERSON
JOIN DEPT
ON PERSON.DepartmentID=DEPT.DepartmentID
GROUP BY DEPT.DepartmentName
 

--10. Find city wise total, average, maximum and minimum salary.
SELECT MAX(PERSON.Salary)AS MAX,MIN(PERSON.Salary)AS MIN,AVG(PERSON.Salary) AS AVG,SUM(PERSON.Salary)AS TOTAL,DEPT.DepartmentName
FROM PERSON
JOIN DEPT
ON PERSON.DepartmentID=DEPT.DepartmentID
GROUP BY DEPT.DepartmentName
 

--11. Find the average salary of a person who belongs to Ahmedabad city.
SELECT AVG(Salary)AS AVG,City
FROM PERSON
WHERE CITY ='Ahmedabad'
GROUP BY City





--12. Produce Output Like: <PersonName> lives in <City> and works in <DepartmentName> Department. (In single column)

SELECT PERSON.PersonName+'lives in' +PERSON.City+ 'and works in '+DEPT.DepartmentName+'depeartment'
FROM PERSON
JOIN DEPT
ON PERSON.DepartmentID=DEPT.DepartmentID




---------------part-B--------------------------------------
--1. Produce Output Like: <PersonName> earns <Salary> from <DepartmentName> department monthly. (Inn single column)
SELECT PERSON.PersonName+'earns'+PERSON.City+ 'FROM   '+DEPT.DepartmentName+'depeartment monthly.'
FROM PERSON
JOIN DEPT
ON PERSON.DepartmentID=DEPT.DepartmentID


--2. Find city & department wise total, average & maximum salaries.
SELECT MAX(PERSON.Salary)AS MAX,MIN(PERSON.Salary)AS MIN,AVG(PERSON.Salary) AS AVG,SUM(PERSON.Salary)AS TOTAL,DEPT.DepartmentName
FROM PERSON
JOIN DEPT
ON PERSON.DepartmentID=DEPT.DepartmentID
GROUP BY DEPT.DepartmentName, PERSON.City

--3. Find all persons who do not belong to any department.
SELECT *
FROM PERSON
JOIN DEPT
ON PERSON.DepartmentID=DEPT.DepartmentID
where DEPT.DepartmentName= null

--4. Find all departments whose total salary is exceeding 100000.
SELECT *
FROM PERSON
JOIN DEPT
ON PERSON.DepartmentID=DEPT.DepartmentID
where PERSON.Salary>100000


--------------------------------PART:C-----------------

