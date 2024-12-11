--------------------------------------------LAB6-----------------------------
-------------MATH FUNCTION-----------------------------
------------------------PART:A-----------------------------------------------

--1)
SELECT 5*30
AS' MULTIPLICATION RESULT';

--2)
SELECT ABS(-25),ABS(25),ABS(-50),ABS(50)

--3)
SELECT CEILING(25.2),CEILING(25.7),CEILING(-25.2);

--4)
SELECT FLOOR(25.2),FLOOR(25.7),FLOOR(-25.2);

--5)
SELECT 5%2,5%3;


--6)
SELECT POWER(3,2),POWER(4,3);

--7)
SELECT SQRT(25),SQRT(30),SQRT(50);

--8)
SELECT SQUARE(5),SQUARE(15),SQUARE(25);

--9)
SELECT PI();

--10)
SELECT ROUND(157.732,2),ROUND(157.732,0),ROUND(157.732,-2);

--11)
SELECT EXP(2),EXP(3);

--12)
SELECT LOG(10),LOG(2);

--13)
SELECT LOG10(5),LOG10(100);

--14)
SELECT SIN(3.1415),COS(3.1415),TAN(3.1415);

--15)
SELECT SIGN(-25),SIGN(0),SIGN(25);

--16)
SELECT RAND();


----------------------------------STRING FUNCTION-----------------------------------
-----------------PART:A---------------------------------

--1)
SELECT LEN(NULL),LEN('HELLO'),LEN('');

--2)
SELECT LOWER('RAJVI')AS LOWERCASE,UPPER('RAJVI')AS UPPERCASE;

--3)
SELECT SUBSTRING('RAJVI',1,3);

--4)
SELECT SUBSTRING('RAJVI SADATIYA',3,8);

--5)
SELECT REPLACE('ABC123EFG','123','XYZ'),REPLACE('ABCABCABC','C','5');

--6)
SELECT ASCII('a'),ASCII('A'),ASCII('z'),ASCII('Z'),ASCII('0'),ASCII('9');

--7)
SELECT CHAR(97),CHAR(65),CHAR(122),CHAR(90),CHAR(48),CHAR(57);

--8)
SELECT LTRIM('  HELLOWORLD');

--9)
SELECT RTRIM('   HELLOWORLD');

--10)
SELECT LEFT('SQL SERVER',4),RIGHT('SQL SERVER',5);

--11)
SELECT CAST(1234.56 AS INT);
SELECT CONVERT (INT,1234.56);

--12)
SELECT CAST(10.58 AS INT), CONVERT( INT,10.58);

--13)
SELECT SPACE (10)+'RAJVI';

--14)
SELECT CONCAT('RAJVI','SADATIYA');

--15)
SELECT REVERSE ('DARSHAN');

--16)
SELECT REPLICATE('RAJVI',4);

--------------------------------------DATE FUNCTION---------------------------
----------------PART:A--------------------------------

--1. Write a query to display the current date & time. Label the column Today_Date.
SELECT GETDATE() AS 'TODAY_DATE';

--2. Write a query to find new date after 365 day with reference to today.
SELECT DATEADD(day, 365, GETDATE());

--3. Display the current date in a format that appears as may 5 1994 12:00AM.
SELECT FORMAT(GETDATE(), 'MMM d yyyy hh:mm tt');

--4. Display the current date in a format that appears as 03 Jan 1995.
SELECT FORMAT(GETDATE(), 'dd MMM yyyy');

--5. Display the current date in a format that appears as Jan 04, 96.
SELECT FORMAT(GETDATE(), 'MMM dd, yy');

--6. Write a query to find out total number of months between 31-Dec-08 and 31-Mar-09.
SELECT DATEDIFF(MONTH, '2008-12-31', '2009-03-31');

--7. Write a query to find out total number of years between 25-Jan-12 and 14-Sep-10.
SELECT DATEDIFF(year, '2010-09-14', '2012-01-25') AS date_difference;

--8. Write a query to find out total number of hours between 25-Jan-12 7:00 and 26-Jan-12 10:30.
SELECT DATEDIFF(hour, '2012-01-25 07:00', '2012-01-26 10:30') AS Hours_Difference;

--9. Write a query to extract Day, Month, Year from given date 12-May-16.
SELECT DATEPART(day, '2016-05-12') AS Day,
       DATEPART(month, '2016-05-12') AS Month,
       DATEPART(year, '2016-05-12') AS Year;

--10. Write a query that adds 5 years to current date.
SELECT DATEADD(year, 5, GETDATE()) AS NewDate;

--11. Write a query to subtract 2 months from current date.
SELECT DATEADD(MONTH, -2, GETDATE()) AS TwoMonthsBeforeCurrentDate;

--12. Extract month from current date using datename () and datepart () function.
SELECT MONTH(GETDATE()) AS CurrentMonth;
SELECT DATEPART(month, GETDATE()) AS CurrentMonth;
SELECT DATENAME(month, GETDATE()) AS CurrentMonthName;

--13. Write a query to find out last date of current month.
SELECT EOMONTH(GETDATE()) AS LastDateOfCurrentMonth;

--14. Calculate your age in years and months.






