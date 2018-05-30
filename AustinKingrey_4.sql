--====================================================== 
--Austin Kingrey
--CIS332: Database and SQL
--UNIT 4, CHAPTER 5 & 6 Assignment
--======================================================

---Cleanup---
C:\Users\kellyjosanders\Documents\DMACC\CIS332_Student_Files\JLDB_Build_5.sql 
---1---
INSERT INTO orders (order#,customer#,orderdate)
  VALUES (1021, 1009, '20-Jul-2009');
  
--Check--
SELECT *
FROM orders;

--2--
UPDATE orders
  SET SHIPZIP = 33222
  WHERE order# = 1017;

--Check--
SELECT *
FROM orders;

--3--
COMMIT;

--4--
INSERT INTO orders (order#,customer#,orderdate)
  VALUES(1022,2000,'6-AUG-09');
  
--This won't work because the customer number has a constraint on it from another table preventing me from changing it here.

--5--
INSERT INTO orders(order#,customer#)
  VALUES(1023,1009);

--You can not insert a null into orderdate and its not filled out here.\

--6--
UPDATE books
SET cost = '&Cost'
WHERE isbn = '&ISBN';

--7--
UPDATE books
SET cost = '20'
WHERE isbn = '1059831198';

--check--
Select*
FROM books;

--8--
UPDATE books
SET cost = '18.75'
WHERE isbn = '1059831198';

--check--
SELECT *
FROM books;

--9--

DELETE FROM orders
WHERE order# = 1005;

--check--
SELECT *
FROM orders;

--10--
ROLLBACK;

--CHECK--
SELECT *
FROM orders;

--1--
SELECT *  
FROM customers;

CREATE SEQUENCE
customers_customer#_seq
INCREMENT BY 1
START WITH 1021
NOCACHE NOCYCLE;

--CHECK--
Select *
FROM user_sequences;

--2--
INSERT INTO customers (customer#,lastname,firstname,address,city,state,zip,referred,region,email)
VALUES (customers_customer#_seq.NEXTVAL, 'Shoulders','Frank',NULL,NULL,NULL,23567,NULL,NULL,NULL);

--CHECK--
SELECT *
FROM customers;
