--====================================================== 
--AUSTIN KINGREY
--CIS332: Database and SQL
--UNIT 2, CHAPTER 3 Assignment
--======================================================

--Clean-up & Preparation for Running the Script--
DROP TABLE category PURGE;
DROP TABLE jl_emps PURGE;

--1--
CREATE TABLE "CATEGORY"
(
  "CatCode" VARCHAR2(2),
  "CatDesc" VARCHAR2(10)
);

--VERIFICATION--
DESC "CATEGORY"

--2--
CREATE TABLE "EMPLOYEES"
(
  "Emp#" NUMBER(5),
  "LastName" VARCHAR(15),
  "FirstName" VARCHAR(15),
  "Job_class" VARCHAR(4)
);

---VERIFICATION-- 
DESC "EMPLOYEES"

--3--
ALTER TABLE "EMPLOYEES"
   ADD ("EmpDate" DATE DEFAULT SYSDATE,
        "EndDate" DATE  
       );

--VERIFICATION--
DESC "EMPLOYEES"

--4--
ALTER TABLE "EMPLOYEES"
  MODIFY("Job_class" VARCHAR(2));
  
--VERIFICATION--
DESC "EMPLOYEES"

--5--
ALTER TABLE "EMPLOYEES"
  DROP COLUMN "EndDate";

--VERIFICATION--
DESC "EMPLOYEES";

--6--
RENAME "EMPLOYEES" TO "JL_EMPS";

--VERIFCATION--
SELECT table_name
  FROM user_tables;
  
--7--
CREATE TABLE book_pricing
  AS (SELECT ISBN, cost, retail, category
        FROM books);

ALTER TABLE book_pricing
  RENAME COLUMN ISBN TO id;

--VERIFICATION--       
DESC book_pricing

--8--
ALTER TABLE book_pricing
  SET UNUSED COLUMN category;

--VERIFICATION--
DESC book_pricing

--9--
TRUNCATE TABLE book_pricing;

--VERFICIATION--
SELECT *
  FROM book_pricing;

--10--
DROP TABLE book_pricing PURGE;

DROP TABLE jl_emps;

FLASHBACK TABLE jl_emps
  TO BEFORE DROP;
  
--VERIFICATION--
SELECT *
  FROM user_tables;