create table customer 
(
"ID" int8 PRIMARY KEY,
"NAME" varchar(50) Not Null,
"age" INTEGER CHECK (age >=18),
"City" char(50),
"Salary" numeric
);


select * from customer


insert into customer 
("ID", "NAME", "age", "City", "Salary")
Values
(1,'Nikki', 25, 'Delhi', 10000),
(2,'Mintu', 20, 'Mumbai', '15000'),
(3,'Shubham', 20, 'Patna', '12000'),
(4,'Rohan', 30, 'Pune', '11000');




SELECT * FROM customer


---- update values in Sql....

update customer 
set "NAME"= 'Shidev Jee', age= 45
where "ID"=4;


SELECT * FROM customer



-- delect values In Table ...


delete from customer 
where "ID" =4;



---- Alter Table.......

ALTER TABLE customer
ADD COLUMN Deparment varchar(50);


ALTER TABLE customer
DROP COLUMN Deparment;


ALTER TABLE customer
ALTER COLUMN Salary2 varchar(100);




ALTER TABLE customer
Rename column "ID" to customer_id ;


ALTER table nikki
Rename column "nikki" to customers;

--- DROP TRUNCATE TABLe.........

drop Table customer,


drop Table customers

Truncate table customer 

select * from customer 


------ select where clause.......


select * from customer

create table classesroom
(
"rollno" int8 Primary key,
"name"  char(50),
"house" char(40),
"grade" char(20)
);


select * from classesroom


insert into classesroom
("rollno", "name", "house", "grade")
values
(1, 'Sam', 'Akash', 'B'),
(2, 'Ram', 'Agni', 'A'),
(3, 'Shyam', 'Jal', 'B'),
(4, 'Sundar', 'Agni', 'A'),
(5, 'Ram', 'Yayu', 'B');



SELECT  DISTINCT grade from classesroom


--- WHERE CLAUSE.......


SELECT * from classesroom
where grade='A' AND rollno>2




create table cust
(
customer_id Serial PRIMARY KEY,
first_name Varchar(50),
last_name varchar(50),
email varchar(100),
address_id int8
);


----IMPORT CSV FILE


SELECT * FROM cust


copy cust(customer_id, first_name, last_name, email, address_id)
from 'G:\customer.csv'
DELIMITER ','
CSV HEADER;

select * from nikki


create table payments 
(
customer_id Serial PRIMARY KEY,
amount int8 NOT NULL,
mode varchar(50),
payment_date date
);



copy payments(customer_id, amount, mode, payment_date)
from 'H:\payments.csv'
DELIMITER ','
CSV HEADER;



create table customers
(
customer_id Serial PRIMARY KEY,
first_name char(50),
last_name  char(50),
address_id  char(50)
);


copy customers(customer_id, first_name, last_name, address_id)
from 'H:\customers.csv'
DELIMITER ','
CSV HEADER;



---- impoart data



CREATE TABLE payment
(
customer_id Serial PRIMARY KEY,
amount int8 NOT NULL,
mode varchar(50),
payment_date date
);

drop table emp

CREATE TABLE emp
(
empid Serial PRIMARY KEY,
empname char(50),
manager_id  numeric
);

select * from payment

copy emp(empid, empname, manager_id)
from 'H:\emp.csv'
DELIMITER ','
CSV HEADER;


---- SELECT , ORDER BY, LIMIT........

SELECT * FROM cust
order BY first_name asc
limit 5



----- string funcation....


select LENGTH(first_name), first_name from cust
  
select SUBSTRING(first_name, 1,3) ,first_name from cust

select CONCAT(first_name, last_name),first_name, last_name 
from cust

select REPLACE(first_name, 'Mary','Mohan'),first_name, last_name 
from cust

select Lower(mode) from payment


--------- AGGREGATE FUNCATION......

SELECT count(amount)FROM payment 


SELECT MIN(amount)FROM payment 

SELECT SUM(amount)FROM payment 

SELECT MAX(amount), FROM payment 

SELECT round(avg(amount),2) FROM payment 

---------- GROUP BY STATEMENT ...


SELECT mode, sum(amount) as total 
from payment 
group by mode
order by total asc



select * from payment


-----HAVING CLAUSE......


Select mode,COUNT(amount) as total
from payment
group by mode
having count(amount) >= 2 AND count(amount) <4
order by total desc



----- TIMESTAMPS & EXTRACT....

SHOW TIMEZONE
SELECT NOW()
SELECT TIMEOFDAY()
SELECT CURRENT_TIME
SELECT CURRENT_DATE


---- EXTRACT FUNCATION......

SELECT EXTRACT(Year FROM payment_date) as payment_year, payment_date
FROM PAYMENT



SELECT EXTRACT(date FROM payment_date) as payment_date, payment_date
FROM PAYMENT



---- joins..........

select * 
from customer as c
inner join payment as p
on c.customer_id=p.customer_id


select c."NAME", c."Salary",p.mode
from customer as c
inner join payment as p
on c.customer_id=p.customer_id




select * 
from customers as c
inner join payment as p
on c.customer_id=p.customer_id


select * from customer

select * from payment

 ---left join......

 
select c."NAME", c."Salary",p.mode
from customer as c
left join payment as p
on c.customer_id=p.customer_id


select c."first_name",p.mode
from customers as c
left join payments as p
on c.customer_id=p.customer_id



select *
from customers as c
left join payments as p
on c.customer_id=p.customer_id


select * from customers
select * from payments

---- right jon...

select *
from customers as c
right join payments as p
on c.customer_id=p.customer_id


---full join...

select *
from customers as c
full join payments as p
on c.customer_id=p.customer_id


--- salf join.......



select T1.empname as employee_name, T2 manger_name
from emp as T1
join emp as T2
on T2.empid = T1.manager_id


select *
from emp as A1
join emp as A2
on A2.empid = A1.manager_id


select * from emp



----union....


select * from custA


create table custA
(
cust_name  char(50),
cust_amount bigint
);


insert into custA
("cust_name", "cust_amount")
values
('Madan Mohan', '2100'),
('Gopi Nath', '1200'),
('Govind Dev', '5000');



select * from custA



create table custB
(
cust_name  char(50),
cust_amount bigint
);	



insert into custB
("cust_name", "cust_amount")
values
('Gopi Bhat', '1200'),
('Madan Mohan', '2100');



select cust_name, cust_amount
from custA
UNION All
select cust_name, cust_amount
from custb

-- sub query........
select * from customer


copy payments(customer_id, amount, mode, payment_date)
from 'G:\payment.csv'
DELIMITER ','
CSV HEADER;


create table customerA
(
"customer_id" int8 primary key,
"amount" bigint,
"mode" varchar(40),
"payment_date"  date 
);




select avg(amount)
from payments



select avg(amount)
from customerA

select * from payments


Truncate table payments

Truncate table customer 


Truncate table payments RESTART IDENTITY;



insert into payments
(customer_id, amount, mode, payment_date)
values
()



delete from  payments
where customer_ID= 2;

select * from payments



update payments
set "NAME"= 'Shidev Jee', age= 45
where "ID"=4;




















