create database new_assignment
use new_assignment
create table employee(employee_id int,first_name varchar(20),last_name varchar(20),salary int,joining_date datetime,department varchar(20), primary key(employee_id))

insert into employee values(1,'anika','arora',100000,2020-02-14,'HR'),
                           (2,'veena','verma',80000,2020-02-15,'admin'),
						   (3,'vishal','singhal',300000,2020-02-16,'HR'),
						   (4,'sushanth','singh',500000,2020-02-17,'admin'),
						   (5,'bhupal','bhati',500000,2011-06-18,'admin'),
						   (6,'dheeraj','diwan',200000,2011-06-19,'account'),
						   (7,'karan','kumar',75000,2020-01-14,'account'),
						   (8,'chandrika','chauhan',90000,2011-04-15,'admin')

create table employee_bonus(employee_ref_id int,bonus_amount int,bonus_date datetime,foreign key(employee_ref_id) references employee(employee_id))

insert into employee_bonus values(1,5000,2020-02-16),
                                 (2,3000,2011-06-16),
								 (3,4000,2020-02-16),
								 (1,4500,2020-02-16),
								 (2,3500,2011-06-16)
create table employee_title(employee_ref_id int,employee_title varchar(20), affective_date datetime)
insert into employee_title values(1,'manager',2016-02-20),
                                 (2,'executive',2016-06-11),
								 (8,'executive',2016-06-11),
								 (5,'manager',2016-06-11),
								 (4,'asst. manager',2016-06-11),
								 (7,'executive',2016-06-11),
								 (6,'lead',2016-06-11),
								 (3,'lead',2016-06-11)
select* from employee
select* from employee_bonus
//1
select first_name as employee_name from employee
//2
select upper(last_name) as uppercaselastname from employee
//3
select distinct department from employee
//4
select substring(last_name, 1,3) as extractstring from employee
//5
select len(department) as dept_length from employee
//6
select concat(first_name,' ',last_name)as full_name from employee
//7
select *from employee order by first_name
//8
select* from employee order by first_name asc,department desc
//9
select* from employee where first_name= 'veena'
select* from employee where first_name= 'karan'
//10
select* from employee where department= 'admin'
//11
select* from employee where first_name like 'v%'
//12
select* from employee where salary between 100000 and 500000
//13
select* from employee where joining_date like '2020-02%'
//14
select* from employee where salary>=500000
select* from employee where salary<=100000
//16
select* from employee_title where employee_title='manager'
//17
select department , count(*)
        from employee
		group by department
		having count(*) >1
//18
select* from employee where (employee_id%2)=1
//19
select* into clone
from employee
select* from clone
//20
select max(salary) from employee
select max(salary) from employee where salary < (select max(salary) from employee)
//21
select * from employee where salary in ( select salary from employee 
                                          group by salary
										  having count(*) >1)
//22
select max(salary) from employee where salary < (select max(salary) from employee)
//23
select top 50 percent* from employee
//24
select distinct department
      from employee
	     group by department
		    having count(employee_id)<=4
//25
select department, count(*)
from employee
group by department
//26
select department, max(salary) from employee group by (department)
//27
select first_name from employee where salary=(select max(salary) from employee)
//28
select department ,avg(salary) as avg_salary from employee  
                                              group by(department)
//29
SELECT employee.employee_id, employee.first_name, employee.last_name, employee.salary, employee.department, employee_bonus.bonus_amount
FROM employee,employee_bonus  WHERE employee_bonus.bonus_amount = (SELECT MAX(bonus_amount) from employee_bonus)
//30
select employee.employee_id,employee.first_name,employee_title.employee_title
from employee, employee_title