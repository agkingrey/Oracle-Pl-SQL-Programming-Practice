--====================================================== 
--Austin Kingrey
--CIS332: Database and SQL
--UNIT 1, CHAPTER 2 Assignment
--======================================================

--1--
SELECT *
FROM books;

--2--
SELECT title
FROM books;

--3--
SELECT title, pubdate "Publication Date"
FROM books;

--4--
SELECT customer#, city, state
FROM customers;

--5--
SELECT name, contact "Contact Person", phone
FROM publisher;

--6--
SELECT DISTINCT category
FROM books;

--7--
SELECT DISTINCT Customer#
FROM orders;

--8--
SELECT category, title
FROM books;

--9--
SELECT lname || ', ' || fname
FROM author;

--10--
Select order#, item#, isbn, quantity, paideach, quantity*paideach "Item Total"
FROM orderitems;

--1--
SELECT lastname || ', ' || firstname "Name", address, city || ',' || state "Location"
FROM customers;


--2--
SELECT title, ((retail-cost)/cost)*100 "Profit %"
FROM books;
