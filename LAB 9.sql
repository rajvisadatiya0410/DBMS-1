-----------------------------LAB:9---------------------------

----------SUB QUERIES------------

-------------------PART:A---------------------

CREATE TABLE Stu_Detail (
    Rno INT,
    Name VARCHAR(50),
    City VARCHAR(50),
    DID INT,
);

INSERT INTO Stu_Detail (Rno, Name, City, DID) VALUES
(101, 'Raju', 'Rajkot', 10),
(102, 'Amit', 'Ahmedabad', 20),
(103, 'Sanjay', 'Baroda', 40),
(104, 'Neha', 'Rajkot', 20),
(105, 'Meera', 'Ahmedabad', 30),
(106, 'Mahesh', 'Baroda', 10);

CREATE TABLE Academic (
    Rno INT,
    SPI DECIMAL(3, 1),
    Bklog INT
);

INSERT INTO Academic (Rno, SPI, Bklog) VALUES
(101, 8.8, 0),
(102, 9.2, 2),
(103, 7.6, 1),
(104, 8.2, 4),
(105, 7.0, 2),
(106, 8.9, 3);

CREATE TABLE Department (
    DID INT,
    DName VARCHAR(50)
);

INSERT INTO Department (DID, DName) VALUES
(10, 'Computer'),
(20, 'Electrical'),
(30, 'Mechanical'),
(40, 'Civil');


--1. Display details of students who are from computer department. 
SELECT* FROM Stu_Detail
WHERE DID=(SELECT DID FROM DEPARTMENT WHERE DNAME='COMPUTER')


--2. Displays name of students whose SPI is more than 8. 
SELECT *FROM Stu_Detail
WHERE RNO IN(SELECT RNO FROM ACADEMIC WHERE SPI>8)
--3. Display details of students of computer department who belongs to Rajkot city. 
SELECT * FROM Stu_Detail
WHERE DID IN (SELECT DID FROM Department WHERE DNAME='Computer')AND City='Rajkot'

--4. Find total number of students of electrical department. 
SELECT Name FROM Stu_Detail
WHERE Rno IN (SELECT RNO FROM Academic WHERE SPI>8)

--5. Display name of student who is having maximum SPI. 
SELECT Name FROM Stu_Detail
WHERE Rno IN (SELECT Rno FROM Academic where SPI IN (SELECT MAX(SPI)FROM Academic) )

--6. Display details of students having more than 1 backlog.
SELECT Name FROM Stu_Detail
WHERE Rno IN (SELECT Rno FROM Academic where Bklog >1 )

-------------------------PART-B--------------
--1. Display name of students who are either from computer department or from mechanical department.

SELECT * FROM Stu_Detail
WHERE DID IN (SELECT DID FROM Department WHERE DNAME IN ('Computer','Mechanical'))

--2. Display name of students who are in same department as 102 studying in.
SELECT Name FROM Stu_Detail
WHERE DID = (SELECT DID FROM Stu_Detail where  Rno=102 )AND Rno!=102


--------------PART-C---------------------------
--1. Display name of students whose SPI is more than 9 and who is from electrical department.
SELECT Name from Stu_Detail
WHERE Rno IN  (SELECT RNO FROM Academic WHERE SPI>9)AND DID IN (SELECT DID FROM Department WHERE DNAME='Electrical' )

--2. Display name of student who is having second highest SPI.
SELECT Name from Stu_Detail
WHERE Rno IN  (SELECT RNO FROM Academic WHERE SPI IN (SELECT MAX(SPI)FROM Academic WHERE SPI < (SELECT MAX(SPI)FROM Academic)))


--3. Display city names whose students branch wise SPI is 9.2
SELECT City FROM Stu_Detail
WHERE Rno IN (SELECT RNO FROM Academic WHERE SPI=9.2)and DID IN (SELECT DID FROM Department GROUP BY DID)










---------------------------SET OPERATOR---------------------
---------------PART:A-------------------

CREATE TABLE Computer (
    RollNo INT,
    Name VARCHAR(50)
);


INSERT INTO Computer (RollNo, Name) VALUES
(101, 'Ajay'),
(109, 'Haresh'),
(115, 'Manish');

CREATE TABLE Electrical (
    RollNo INT PRIMARY KEY,
    Name VARCHAR(50)
);

INSERT INTO Electrical (RollNo, Name) VALUES
(105, 'Ajay'),
(107, 'Mahesh'),
(115, 'Manish');

--1. Display name of students who is either in Computer or in Electrical. 
SELECT NAME FROM COMPUTER
UNION
SELECT NAME FROM ELECTRICAL


--2. Display name of students who is either in Computer or in Electrical including duplicate data. 
SELECT NAME FROM COMPUTER 
UNION ALL
SELECT NAME FROM ELECTRICAL


--3. Display name of students who is in both Computer and Electrical.
SELECT NAME FROM COMPUTER 
INTERSECT
SELECT NAME FROM ELECTRICAL


--4. Display name of students who are in Computer but not in Electrical. 
SELECT NAME FROM COMPUTER 
EXCEPT 
SELECT NAME FROM Electrical
--5. Display name of students who are in Electrical but not in Computer. 
SELECT NAME FROM ELECTRICAL
EXCEPT
SELECT NAME FROM COMPUTER

--6. Display all the details of students who are either in Computer or in Electrical. 
SELECT *FROM COMPUTER
UNION
SELECT *FROM ELECTRICAL

--7. Display all the details of students who are in both Computer and Electrical.
SELECT *FROM COMPUTER
INTERSECT
SELECT *FROM ELECTRICAL


----------------PART:B-----------------
CREATE TABLE Emp_DATA (
    EID INT,
    Name VARCHAR(50)
);

INSERT INTO Emp_DATA (EID, Name) VALUES
(1, 'Ajay'),
(9, 'Haresh'),
(5, 'Manish');

CREATE TABLE Customer (
    CID INT,
    Name VARCHAR(50)
);

INSERT INTO Customer (CID, Name) VALUES
(5, 'Ajay'),
(7, 'Mahesh'),
(5, 'Manish');


--1. Display name of persons who is either Employee or Customer. 
SELECT NAME FROM EMP_DATA
UNION
SELECT NAME FROM CUSTOMER



--2. Display name of persons who is either Employee or Customer including duplicate data. 
SELECT NAME FROM EMP_DATA
UNION ALL
SELECT NAME FROM CUSTOMER

--3. Display name of persons who is both Employee as well as Customer. 
SELECT NAME FROM EMP_DATA
INTERSECT
SELECT NAME FROM CUSTOMER

--4. Display name of persons who are Employee but not Customer. 
SELECT NAME FROM EMP_DATA
EXCEPT
SELECT NAME FROM CUSTOMER

--5. Display name of persons who are Customer but not Employee.
SELECT NAME FROM CUSTOMER
EXCEPT
SELECT NAME FROM EMP_DATA



------------------PART:C----------------
--1
SELECT *FROM CUSTOMER
UNION
SELECT *FROM EMP_DATA

--2
SELECT *FROM EMP_DATA
UNION ALL 
SELECT *FROM CUSTOMER

--3
SELECT *FROM EMP_DATA
INTERSECT
SELECT *FROM CUSTOMER

--4
SELECT *FROM EMP_DATA
EXCEPT
SELECT *FROM CUSTOMER

--5
SELECT *FROM CUSTOMER
EXCEPT
SELECT *FROM EMP_DATA


