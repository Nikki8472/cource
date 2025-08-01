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




select * from payments




insert into payments
("customer_id", "amount", "mode", "payment_date")
values
(1, '60', 'cash', '24-08-2024'),
(8, '110', 'cash', '08-05-2024'),
(10, '70', 'mobile payment', '1-08-2024'),
(11, '80', 'cash', '14-08-2024'),
(2, '500', 'credit card', '7-09-2024');





select avg(amount) from payments
---- find avg values 

---- filter the customer data >avg values

select * from payments
where amount>164




select * from payments
where amount > (select avg(amount) from payments)


---- sub_query.. logical (in)  operator...




select * from payments

select * form customer




create table customers
(
"customer_id"  int8 primary key,
"first_name"  varchar(50),
"last_name" varchar(50),
"address_id" numeric
);



select customer_id, amount, mode
from payments
where customer_id IN (select customer_id from customers)


----- SUB QUERY USING LOGICAL (EXISTS) OPERATOR


select first_name, last_name from customers
full join c.customer_id= p.customer_id







select first_name, last_name, mode, payment_date, amount
from customers as c
full join payments as p
on c.customer_id=p.customer_id
and amount>50

select first_name, last_name
from customers c
where Exists(select customer_id, amount, mode
              from payments p
			  where p.customer_id = c.customer_id
			  and amount> 100)



   
select first_name, last_name
from customers c
where full join (select customer_id, amount, mode
              from payments p
			  where p.customer_id = c.customer_id)

			  
			  and amount> 100)



------- windows funcaton......


select * from test_data


create table test_data
(
"new_id" bigint,
"new_cat"   varchar(50)
);




select * from test_data


insert into test_data
("new_id", "new_cat")
values
('100','Agni'),
('200','Agni'),
('200','Vayu'),
('300','Vayu'),
('500','Vayu'),
('500','dharti'),
('700','dharti');

select * from test_data


select new_id, new_cat,
sum(new_id)over(Partition by new_cat order by new_id) as "Grand Total",
min(new_id)over(Partition by new_cat order by new_id) as "Grand min",
max(new_id)over(Partition by new_cat order by new_id) as "Grand max",
count(new_id)over(Partition by new_cat order by new_id) as "Grand count"
from test_data

------------------------------

select new_id, new_cat,
sum(new_id) over(order by new_id Rows Between Unbounded Preceding And Unbounded Following) as "Total",
Avg(new_id) over(order by new_id Rows Between Unbounded Preceding And Unbounded Following) as "Average",
Count(new_id) over(order by new_id Rows Between Unbounded Preceding And Unbounded Following) as "Count",
Min(new_id) over(order by new_id Rows Between Unbounded Preceding And Unbounded Following) as "Min",
Max(new_id) over(order by new_id Rows Between Unbounded Preceding And Unbounded Following) as "Max"
from test_data






---RANIKING FUNCATION 

select new_id,
Row_number() over(order by new_id) as "Row_Number",
Rank() over(order by new_id) as "Rank",
Dense_Rank() over(order by new_id) as "Dense_Rank",
Percent_Rank() over(order by new_id)as "Percent_Rank"
From test_data



---- ANALYTIC FUNCATION EXAMPLE lEAD, LAG


SELECT new_id,
lead(new_id,2) over(order by new_id) as "LEAD_BY2",
lag(new_id,2) over(order by new_id) as "LAG_BY2"
From test_data

SELECT new_id,
lead(new_id,3) over(order by new_id) as "LEAD_BY2",
lag(new_id,3) over(order by new_id) as "LAG_BY2"
From test_data


-----CASE SATATEMENT SYNTAX..........



SELECT customer_id, a
From payments



select * from payments

update payments 
set "amount"= '100'
where "customer_id"=8;

----General Statement.......................
select customer_id, amount,
case
When amount<100 Then 'Small Amount'
When amount=100 Then 'Medium Amount'
ELSE 'Big Product'
End as SalesStatus
From payments


___CASE EXPRESSION SYNTAX...

select customer_id, 
case amount
When 100 Then 'Small Amount'
When 100 Then 'Medium Amount'
ELSE 'Big Product'
End as SalesStatus
From payments



select customer_id, 
case amount
When 500 Then 'Prime Sales'
When 100 Then 'Bad Sales Amount'
ELSE 'Medium Sales'
End as SalesStatus
From payments



select customer_id, 
case amount
When 500 Then 'Prime customer'
When 100 Then 'Pluse Customer'
ELSE 'Regular Customer'
End as CustomerStatus
From payments



------ COMMON TABLE EXPERESSION.....CTE.......................


SELECT * FROM payments

SELECT * FROM customers



INSERT INTO payments(customer_id, amount, mode, payment_date)
Values
('17','250', 'Credit Card','14-01-2025'),
('7','20', 'Mobile_payment','14-012-2024');


INSERT INTO customers(customer_id, first_name, last_name, address_id)
Values
('17','R', 'Madhav','9');



select * from customers

SELECT * FROM payments




WITH my_cte as (
select *, sum(amount) over(order by p.customer_id) as "Average_price",
Count(address_id) over(order by c.customer_id) as "Count"
From payment as p 
INNER JOIN customers As c
ON P.customer_id =c.customer_id
)
SELECT first_name, last_name, amount, mode
from my_cte

----------2 


WITH my_cte as (
select *, avg(amount) over(order by p.customer_id) as "Average_price",
Count(address_id) over(order by c.customer_id) as "Count"
From payment as p 
INNER JOIN customers As c
ON P.customer_id =c.customer_id
)
SELECT first_name, last_name, amount, mode
from my_cte

--------3



WITH my_cp as (
select *, avg(amount) over(order by p.customer_id) as "Average_price",
Count(address_id) over(order by c.customer_id) as "Count"
From payment as p 
INNER JOIN customers As c
ON P.customer_id =c.customer_id
);

my_ca as (
SELECT *
FROM customers as c
INNER JOIN address as a
ON a.address_id = c.address_id
INNER JOIN country as cc
on cc.city_id = a.city_id
)


select * from customers

drop table address


create table address
(
"address_id" varchar(50)
);



insert into address
("address_id")
values
('5'), ('7'), ('8'), ('6'), ('9');




ALTER TABLE address
ADD COLUMN "city_id"  varchar(50);




select * from address



insert into address 
("city_id")
values
()



INSERT INTO customers (first_name, last_name, email, address_id)
VALUES ('Ravi', 'Sharma', 'ravi@email.com', 105);






select * from city

alter table city
add column  city_id varchar(50);


alter table city
add row city_id
(
('5'), ('7'), ('8'), ('6'), ('9')
);



INSERT INTO city (city_id)
VALUES 
(5),
(7),
(8),
(6),
(9);








select * from city




DELETE FROM city
WHERE city_id IS NULL OR city_id IS NULL;





DELETE FROM city
WHERE city_name IS NULL;




INSERT INTO city (city, city_id)
VALUES 
('Sasebo', 5),
('Sasebo', 7),
('Sasebo', 8),
('San Berardino', 6),
('San Berardino', 9);





Truncate table city
Restart Identity

select * from country



ALTER TABLE country 




select  * from city





drop table country 


create tav


