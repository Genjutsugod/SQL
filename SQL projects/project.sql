create database project

use project

create table user_account(id int,user__name varchar(100),email varchar(254),password_ varchar(50),password_salt varchar(50) null,password_hash_algorithm varchar(50),primary key(id))

create table status(id int,status_name varchar(100),is_user_working bit,primary key(id)) 

create table role_(id int,role_name varchar(100),primary key(id))

create table user_has_status(id int, status_start_time datetime,status_end_time datetime null, user_account_id int,status_id int, primary key(id),foreign key(user_account_id) references user_account(id),foreign key(status_id) references status(id)) 

create table user_has_role(id int,role_start_time datetime,user_end_time datetime null, user_account_id int,role_id int,primary key(id),foreign key(user_account_id) references user_account(id),foreign key(role_id) references role_(id))
//1
insert into user_account values(111,'mukund kumar','mukund@gmail.com','avengers123@','avavav','muku123')
select* from user_account
insert into user_account values(112,'anand kumar','anand@gmail.com','batman123@','ananan','an123'),
                               (113,'shivam kumar','shivam@gmail.com','blabla123@','shshsh','duku123'),
							   (114,'govind kumar','govind@gmail.com','govind123@','gbgbgb','hihi123')
insert into user_account values(115,'navisha kumari','navii@gmail.com','panther123@','nanan','nn123')
insert into status values(1,'working',1)
insert into status values(6,'working',0),
                         (2,'working',0),
						 (3,'working',1),
						 (4,'working',0),
insert into role_ values(11,'supervisor'),
                        (12,'manager'),
						(13,'advisor'),
						(14,'worker'),
						(15,'guard')
select* from role_
select * from status

insert into user_has_role values(1111,'2022-11-08 09:00:00','2022-11-08 18:00:00',111,11),
                                (1112,'2022-11-08 09:20:00','2022-11-08 18:10:00',112,12),
								(1113,'2022-11-08 09:30:00','2022-11-08 19:20:00',113,13),
								(1114,'2022-11-08 09:45:00','2022-11-08 19:10:00',114,14),
								(1115,'2022-11-08 10:00:00','2022-11-08 19:00:00',115,15)
select* from user_has_role

insert into user_has_status values(11101,'2022-11-08 09:10:02','2022-11-08 19:00:40',111,1),
                                  (11122,'2022-11-08 09:20:15','2022-11-08 18:30:07',112,2),
								  (11133,'2022-11-08 09:50:44','2022-11-08 18:45:00',113,3),
								  (11144,'2022-11-08 09:15:30','2022-11-08 18:11:43',114,4),
								  (11155,'2022-11-08 09:00:22','2022-11-08 17:59:59',115,6)
select* from user_account
select* from role_
select * from status
select* from user_has_role
select* from user_has_status

//2
truncate table user_has_status
truncate table user_has_role

select *from sys.foreign_keys
SELECT 
    'ALTER TABLE ' 
    +  OBJECT_SCHEMA_NAME(parent_object_id) 
    +'.[' + OBJECT_NAME(parent_object_id) 
    +'] DROP CONSTRAINT ' 
    + name as DropFKConstraint
FROM sys.foreign_keys
ALTER TABLE dbo.[user_has_status] DROP CONSTRAINT FK__user_has___user___2A4B4B5E
ALTER TABLE dbo.[user_has_role] DROP CONSTRAINT FK__user_has___role___3D5E1FD2
ALTER TABLE dbo.[user_has_role] DROP CONSTRAINT FK__user_has___user___3C69FB99
ALTER TABLE dbo.[user_has_status] DROP CONSTRAINT FK__user_has___statu__2B3F6F97

truncate table role_
truncate table status
truncate table user_account