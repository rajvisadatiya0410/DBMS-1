----------------------------------lab 11------------------
--------------PART A------------------------


CREATE TABLE STU_INFO(
RNO INT ,
NAME VARCHAR(20),
BRANCH VARCHAR(10),

)

INSERT INTO STU_INFO
VALUES
(101,'RAJU','CE'),
(102,'AMIT','CE'),
(103,'SANJAY','ME'),
(104,'NEHA','EC'),
(105,'MEERA','EE'),
(106,'MAHESH','EC')

SELECT*FROM STU_INFO

CREATE TABLE RESULT(
RNO INT,
SPI DECIMAL(8,2)
)
INSERT INTO RESULT 
VALUES
(101,8.8),
(102,9.2),
(103,7.6),
(104,8.2),
(105,7.0),
(107,8.9)


SELECT *FROM RESULT

CREATE TABLE EMPLOYEE_MASTER (

EMPLOYEENUMBER VARCHAR(5),
NAME VARCHAR (25),
MANAGERNO VARCHAR(5)
)

INSERT INTO EMPLOYEE_MASTER
VALUES 
('E01','TARUN',NULL),
('E02','ROHAN','E02'),
('E03','PRIYA','E03'),
('E04','MILAN','E03'),
('E05','JAY','E01'),
('E06','ANJANA','E04')

SELECT * FROM EMPLOYEE_MASTER



--1. Combine information from student and result table using cross join or Cartesian product.
SELECT *
FROM STU_INFO
CROSS JOIN RESULT;

--2. Perform inner join on Student and Result tables.
SELECT *
FROM STU_INFO
INNER JOIN RESULT ON STU_INFO.Rno = RESULT.Rno;
 

--3. Perform the left outer join on Student and Result tables.
SELECT *
FROM STU_INFO
LEFT OUTER JOIN RESULT ON STU_INFO.Rno = RESULT.Rno;


--4. Perform the right outer join on Student and Result tables.
SELECT *
FROM STU_INFO
RIGHT OUTER JOIN RESULT ON STU_INFO.Rno = RESULT.Rno;


--5. Perform the full outer join on Student and Result tables. 
SELECT *
FROM STU_INFO
FULL OUTER JOIN RESULT ON STU_INFO.Rno = RESULT.Rno;


--6. Display Rno, Name, Branch and SPI of all students.
SELECT STU_INFO.RNo,STU_INFO.Name,STU_INFO.Branch,RESULT.SPI FROM STU_INFO 
INNER JOIN RESULT 
ON STU_INFO.RNo=RESULT.RNo

--7. Display Rno, Name, Branch and SPI of CE branch’s student only.
SELECT STU_INFO.RNo,STU_INFO.Name,STU_INFO.Branch,RESULT.SPI FROM STU_INFO 
INNER JOIN RESULT 
ON STU_INFO.RNo=RESULT.RNo
WHERE STU_INFO.Branch='CE'

--8. Display Rno, Name, Branch and SPI of other than EC branch’s student only.
SELECT STU_INFO.RNo,STU_INFO.Name,STU_INFO.Branch,RESULT.SPI FROM STU_INFO 
INNER JOIN RESULT 
ON STU_INFO.RNo=RESULT.RNo
WHERE STU_INFO.Branch!='EC'

--9. Display average result of each branch.
SELECT STU_INFO.Branch, AVG(RESULT.SPI) AS AVGERAGE FROM STU_INFO 
INNER JOIN RESULT 
ON STU_INFO.RNo=RESULT.RNo
GROUP BY STU_INFO.Branch

--10. Display average result of CE and ME branch
SELECT STU_INFO.Branch, AVG(RESULT.SPI) AS AVGERAGE FROM STU_INFO 
INNER JOIN RESULT 
ON STU_INFO.RNo=RESULT.RNo
WHERE STU_INFO.Branch IN ('CE','ME')
GROUP BY STU_INFO.Branch


-------------------PART B --------------------------