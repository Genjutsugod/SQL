
create database assignment
use assignment
//1
create table customer(cust_id int, firstname varchar(20), lastname varchar(20),email varchar(20),address varchar(50),city varchar(20),state varchar(20),zip int)
insert into customer values(101,'MUKUND','KUMAR','MUKUND@EMAIL.COM','D-17','PATNA','BIHAR',800025),
                           (102,'ANAND','KUMAR','ANAND@EMAIL.COM','D-18','SMS','BIHAR',830025),
						   (103,'NAVISHA','KUMARI','NAVISHA@EMAIL.COM','D-19','HAJ','BIHAR',870025),
						   (104,'AKRITI','KUMARI','AKRITI@EMAIL.COM','D-20','MUZZ','BIHAR',850025),
						   (105,'GOVIND','KUMAR','GOVIND@EMAIL.COM','D-16','DBG','BIHAR',860025)

SELECT* FROM customer
//3
SELECT firstname, lastname from customer
//4
SELECT* FROM CUSTOMER WHERE FIRSTNAME='G%' AND CITY='SANJOSE'