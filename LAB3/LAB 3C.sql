
1)Update deposit amount of all customers from 3000 to 5000. (Use Deposit Table)
UPDATE BORROW
SET AMOUNT=5000
WHERE AMOUNT=3000;

2) Change branch name of ANIL from VRCE to C.G. ROAD. (Use Borrow Table) 

UPDATE BORROW
SET BNAME='C.G.ROAD'
WHERE CNAME='ANIL';

3) Update Account No of SANDIP to 111 & Amount to 5000. (Use Deposit Table)

UPDATE DEPOSIT
SET ACTNO=111,AMOUNT=5000
WHERE CNAME='SANDIP';

4) Update amount of KRANTI to 7000. (Use Deposit Table)

UPDATE DEPOSIT
SET AMOUNT=7000
WHERE CNAME='KRANTI';

5) Update branch name from ANDHERI to ANDHERI WEST. (Use Branch Table)

UPDATE BRANCH
SET BNAME='ANDHERI WEST'
WHERE BNAME='ANDHERI';

6) Update branch name of MEHUL to NEHRU PALACE. (Use Deposit Table)

UPDATE DEPOSIT
SET BNAME='NEHRU PALACE'
WHERE CNAME='MEHUL';

UPDATE DEPOSIT
SET AMOUNT=5000
WHERE ACTNO BETWEEN 103 AND 107;

UPDATE DEPOSIT
SET ADATE='1-APR-1995'
WHERE CNAME='ANIL';

UPDATE DEPOSIT
SET AMOUNT=10000
WHERE CNAME='MINU';

UPDATE DEPOSIT
SET AMOUNT=5000,ADATE='1-APR-1996'
WHERE CNAME='PRAMOD';


UPDATE BORROW 
SET AMOUNT=AMOUNT+0.1

UPDATE DEPOSIT 
SET AMOUNT=AMOUNT+0.2

UPDATE BORROW 
SET AMOUNT='NULL'
WHERE LNO=321

UPDATE BORROW
SET BNAME='NULL'
WHER CNAME='KRANTI';

UPDATE BORROW
SET 