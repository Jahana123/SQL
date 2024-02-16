show databases;
create database sampleDB;
drop database sampleDB;
use sampleDB;
create table customers(
id int not null,
cust_name varchar (20) not null,
age int not null,
address char(25),
salary decimal(18,2),
primary key (id));
show tables;
desc customers;
insert into customers(id,cust_name,age,address,salary) values
       (1,'Jahana',22,'pmna',2000),
       (2,'sandra',21,'mlprm',3000),
       (3,'gadha',23,'plkd',4000),
       (4,'anandhu',24,'mnnrkd',5000);
select * from customers;
select id,cust_name,salary from customers;
select * from customers where age >23;
select id,cust_name,salary from customers where salary >4000 and age <25;
select * from customers where age between 22 and 24;
insert into customers(id,cust_name,age,address,salary) values
       (5,'Jinu',25,'delhi',6000),
       (6,'sinu',31,'india',8000),
       (7,'ammu',28,'kochi',7000),
       (8,'anu',29,'pune',9000);
update customers set address ="delhi" where id=6;
delete from customers where id=6;
select*from customers;
truncate table customers;
show tables;
drop table customers;
show tables;
create table customers(
id int not null,
cust_name varchar (20) not null,
age int not null,
address char(25),
salary decimal(18,2),
primary key (id));
insert into customers(id,cust_name,age,address,salary) values
       (1,'Jahana',22,'pmna',2000),
       (2,'sandra',21,'mlprm',3000),
       (3,'gadha',23,'plkd',4000),
       (4,'anandhu',24,'mnnrkd',5000);
desc customers;
alter table customers add gender char(1);
select distinct salary from customers order by salary;
select distinct salary,age from customers order by salary;
select * from customers where cust_name in ("jahana","sandra");
update customers set gender='M' where id in (4);
update customers set gender='F' where id in (1,2,3);
select * from customers;
select * from customers where salary like '200%';
select * from customers order by cust_name asc;
select age,avg(salary) as avg_salary from customers group by age;
select count(id) as count_id from customers;
select cust_name,sum(salary) as total_salary from customers group by cust_name having sum(salary) <3500; 
create index sample_index on customers(cust_name);
select * from customers;
drop index sample_index on customers;



