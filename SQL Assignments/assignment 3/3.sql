CREATE DATABASE ASSIGNMENT4


CREATE TABLE ORDERS(ORDER_ID INT,ORDERDATE DATE,AMOUNT INT,CUSTOMER_ID INT)
  INSERT INTO ORDERS VALUES(33,'2022-11-06',2000,10),
                           (34,'2022-11-07',1000,20),
						   (35,'2022-11-08',4000,30),
						   (36,'2022-11-09',4500,40),
						   (37,'2022-11-10',1500,50)
//1
SELECT MAX(AMOUNT) AS MAX_AMT,
       MIN(AMOUNT) AS MIN_AMT,
	   AVG(AMOUNT) AS AVG_AMT FROM ORDERS

//2
CREATE FUNCTION MULTIPLY(@NUM INT)
RETURNS INT
AS BEGIN
RETURN (@NUM*10)
END

SELECT dbo.MULTIPLY(100)
//3
SELECT
CASE 
WHEN 100<200 THEN 'SMALLER'
WHEN 100>200 THEN 'GREATER'
ELSE 'EQUAL'
END
