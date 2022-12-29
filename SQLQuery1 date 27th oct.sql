create database amazon;


create table amazonshop
(
order_id varchar(20),
product varchar(20),
price int,
qty int,
category varchar(20)
);

select *from amazonshop;

insert into amazonshop values ('od1001','soap',70,10,'BGM'),
('od1002','oil',180,15,'BGM'),
('od1003','orange',80,50,'Beverage'),
('od1004','been',150,18,'fashion'),
('od1005','shirt',700,25,'fashion'),
('od1006','cap',250,20,'fashion'),
('od1007','been bag',800,8,'furniture'),
('od1008','apple',100,20,'Beverage'),
('od1009','mango',90,50,'Beverage'),
('od1010','tooth brush',100,20,'BGM'),
('od1011','face cream',150,8,'BGM'),
('od1012','grape',100,30,'Beverage'),
('od1013','hair brush',250,25,'BGM'),
('od1014','doors',800,60,'furniture'),
('od1015','windows',400,60,'furniture'),
('od1016','pants',500,40,'fashion'),
('od1017','tooth powder',200,20,'BGM');

select sum (price) from amazonshop;

select sum (price) from amazonshop where category='BGM';

select avg (price) from amazonshop;

select count (category) from amazonshop where category='fashion';

select min (price) from amazonshop;

select max (price) from amazonshop;

select price*qty from amazonshop where order_id='od1002';

truncate table amazonshop;

insert into amazonshop values ('od1001','soap',70,10,'BGM'),
('od1002','oil',180,15,'BGM'),
('od1003','orange',80,50,'Beverage'),
('od1004','been',150,18,'fashion'),
('od1005','shirt',700,25,'fashion'),
('od1006','cap',250,20,'fashion'),
('od1007','been bag',800,8,'furniture'),
('od1008','apple',100,20,'Beverage'),
('od1009','mango',90,50,'Beverage'),
('od1010','tooth brush',100,20,'BGM'),
('od1011','face cream',150,8,'BGM'),
('od1012','grape',100,30,'Beverage'),
('od1013','hair brush',250,25,'BGM'),
('od1014','doors',800,60,'furniture'),
('od1015','windows',400,60,'furniture'),
('od1016','pants',500,40,'fashion'),
('od1017','tooth powder',200,20,'BGM');

select max (price) from amazonshop where category='BGM';

select max (price) from amazonshop where category='fashion';

select max (price) from amazonshop where category='furniture';
 
select max (price) from amazonshop varchar where category='BGM';

select * from amazonshop;

with cte as
(
 select *,dense_rank() over(partition by category order by price desc ) as rankii from amazonshop
)select order_id,price,category from cte where rankii = 1;

select top 17* from amazonshop order by price;

truncate table amazonshop;

insert into amazonshop values ('od1001','soap',70,10,'BGM'),
('od1002','oil',180,15,'BGM'),
('od1003','orange',80,50,'Beverage'),
('od1004','been',150,18,'fashion'),
('od1005','shirt',700,25,'fashion'),
('od1006','cap',250,20,'fashion'),
('od1007','been bag',800,8,'furniture'),
('od1008','apple',100,20,'Beverage'),
('od1009','mango',90,50,'Beverage'),
('od1010','tooth brush',100,20,'BGM'),
('od1011','face cream',150,8,'BGM'),
('od1012','grape',100,30,'Beverage'),
('od1013','hair brush',250,25,'BGM'),
('od1014','doors',800,60,'furniture'),
('od1015','windows',400,60,'furniture'),
('od1016','pants',500,40,'fashion'),
('od1017','tooth powder',200,20,'BGM');

select *from amazonshop where price>100;


select count (category) from amazonshop;

select category,count (category) as count_of_category from amazonshop group by category; (it counts how many bgm arw there etc);

select count (qty) from amazonshop group by qty;

create table Employee
(
emp_id int,
emp_name varchar(10),
emp_salary int,
emp_city varchar(20),
);

select *from employee;

insert into employee values(201,'Abhay',2000,'Goa'),
(202,'Ankit',4000,'Delhi'),(203,'Bheem',8000,'Jaipur'),
(204,'Ram',2000,'Goa'),(205,'Sumit',5000,'Delhi'),
(206,'Vinay',4000,'Karnataka'),(207,'Basavaraj',5000,'AP'),
(208,'Asha',3000,'Gujrat'),(209,'Nayana',2000,'Karnataka'),
(210,'Pavan',7000,'Jaipur'),(211,'Sanjay',6000,'AP');

select sum(emp_salary),emp_city from employee group by emp_city;

select sum(emp_salary),emp_city from employee group by emp_city having sum(emp_salary)>5000;

create table cityowner
(
id int,
c_name varchar(20),
email varchar(30),
city varchar(10),
age int,
);

select *from cityowner;

insert into cityowner values(1,'steffen','steffen@javapoint.com','texas',

truncate table employee;

insert into employee values(201,'Abhay',2000,'Goa'),
(202,'Ankit',4000,'Delhi'),(203,'Bheem',8000,'Jaipur'),
(204,'Ram',2000,'Goa'),(205,'Sumit',5000,'Delhi'),
(206,'Vinay',4000,'Karnataka'),(207,'Basavaraj',5000,'AP'),
(208,'Asha',3000,'Gujrat'),(209,'Nayana',2000,'Karnataka'),
(210,'Pavan',7000,'Jaipur'),(211,'Sanjay',6000,'AP');

select *from employee;

create table bikes
(
bike_name varchar(20),
locations varchar(30),
price int,
no_bikes int,
);

select *from bikes;

insert into bikes values('bmw','goa',80000,20),
('plues','goa',90000,30),
('cbz','ap',50000,20),
('duke','up',60000,10),
('duke','goa',40000,20),
('cbz','up',50000,10),




create table bikese
(
 bike_name varchar(20),
	 location varchar(20), 
	 price int,
	 no_bikes int,
	 );

	 insert into bikese values('pulshar','goa',80000,20);
	 insert into bikese values('activa','pune',75000,21);
	 insert into bikese values('duke','goa',80000,29);
	 insert into bikese values('ninja','pune',90000,18);
	 insert into bikese values('pulshar','delhi',82000,43);
	 insert into bikese values('pulshar','up',85000,15);
	 insert into bikese values('duke','up',92000,35);
	 insert into bikese values('activa','up',69000,31);
	 insert into bikese values('ninja','goa',98000,30);
	 insert into bikese values('duke','delhoi',91000,27);


select *from bikese;

select bike_name,sum(price) as total from bikese where locatio in('goa','pune')group by bike_name;

select sum(no_bikes) from bikese where locatio='goa';

select bike_name,sum(price) from bikese group by bike_name order by sum(price) desc;

select top 2* from bikese order by price;

select top 1 * from (select top 2 bike_name, sum(price) as total from bikese group by bike_name order by
sum(price) desc) as k order by total asc;

select top 1 * from (select bike_name, sum(price) as total from bikese group by bike_name order by
sum(price) desc) as k order by total asc;

select bike_name, price from bikese where price in(select min(price) from bikese);

select min(price) from bikese;

update bikese set price=92000 where bike_name='ninja' and locatio='pune';

update bikese set price=92000 where bike_name='ninja';

update bikese set price= price+5000 where no_bikes>30;

truncate table bikese;

select *from bikese;



create table department
(
dep_id int,
name varchar(25),
);

select *from department where name='x';

insert into department values(1,'X'),(2,'Y'),(1,'M'),(4,'N'),(2,'R'),(1,'S'),(5,'O'),(1,'T'),(4,'B'),
(3,'C'),(4,'E'),(4,'Q');

select dep_id,count(dep_id) as count_of_dep from department group by dep_id having count(dep_id)>3;


update bikese set price=92000 where bike_name='ninja' and locatio='pune';

create table employers
(
emp_id int,
name varchar(25),
emp_salary int,
emo_dept varchar(20),
);

select *from employers

insert into employers values(1001,'anuj',9000,'finance'),(1002,'saket',4000,'hr'),
(1003,'raman',3000,'coding'),(1004,'renu',6000,'coding'),(1005,'seenu',5000,'hr'),
(1006,'mohan',10000,'marketing'),(1007,'anaya',4000,'coding'),(1008,'parul',8000,'finance');

select name from employers where emo_dept='finance';

select count(emo_dept) from employers where emo_dept='coding'; 


update employers set emp_salary= emp_salary+500 where emp_salary>=8000;


create table pickily
(
growery_code varchar(8),

product_name varchar(20),

Qty int,

stock varchar(15),
);


select *from pickily;




create table table1
(
ID int,
);

create table table2
(
ID int,
);

select * from table1;
select * from table2;

insert into table1 values(1),(2),(3),(1),(4);
insert into table2 values(1),(1),(3),(4);

select *from table1;

select *from table2;
	-------------------------------------left join-------------------------------------------------------
select *from table1
left join table2
on table1.ID = table2.ID;

----------------------------------------Right join-----------------------------------------------------
Select *from table1
Right join table2
on table1.ID = table2.ID;

----------------------------------------inner join-----------------------------------------------------
select *from table1
inner join table2
on table1.ID=table2.ID;
-----------------------------------------Full join/Full outer join------------------------------------
select *from table1
full join table2
on table1.ID=table2.ID
----------------------------------------self join-----------------------------------------------------
   
   
 create table t1a
 (
 id int,
 );
 create table t2a
 (
 id int,
 );

 insert into t1a values(1),(2),(1),(3),(4),(5);
 insert into t2a values(1),(1),(3),(5),(7),(3);

 select * from t1a;
 select * from t2a;

 select id
 from t1a
 where id not in (select id from t2a)

 select t1a.id from t1a
 left join t2a
 on t1a.id=t2a.id where t2a.id is null
	
---------------------------------------------------------------------------------------------------
create table coustomers
(
id int,
names varchar(20),
age int,
addresses varchar(15),
salary int,
);

select *from coustomers;

insert into coustomers values(1,'ramesh',32,'ahmedabad',2000),(2,'khilan',25,'delhi',1500),
(3,'kaushik',23,'kota',2000),(4,'chaitali',25,'mumbai',6500),(5,'hardik',27,'bhopal',8500),
(6,'komal',22,'mp',4500),(7,'muffy',24,'indore',10000);

select a.id,b.names,a.salary from coustomers a, coustomers b
where a.salary < b.salary order by id;


home work 4/11/2022;

create table pickily
(
Growery_code varchar(20),
Product_name varchar(20),
Qty int,
Stock varchar(10),
);

select *from pickily;

insert into pickily values('CD001','oil',97,'Avg'),
('CD002','spices',120,'Above'),('CD003','flowrs',88,'Avg'),
('Cd002','masalas',76,'Avg'),('CD001','beverages',51,'Avg'),
('CD003','snaks',43,'Less'),('CD001','napkins',29,'Less'),
('CD005','pharma',18,'Less'),('CD001','spices',77,'Avg'),
('CD004','flowrs',81,'Avg'),('CD002','oil',63,'Avg'),

('CD001','masalas',51,'Avg');



select distinct Growery_code,Qty from pickily where Qty>50;

select Product_name from pickily where Stock in('Avg') group by Product_name;

select Growery_code,Product_name,Stock from pickily where Stock='less';

select Growery_code,sum(Qty) as total,row_number() over (order by Growery_code) as rankii from pickily
group by Growery_code
)select Growery_code from cte where rankii=1;

select top 1 Growery_code from pickily group by Growery_code order by sum(Qty) desc;

select * from pickily order by Product_name;

select *,rank() over(partition by Product_name order by Qty desc)  from pickily;



create table student1
(
students_code varchar(10),
subjects varchar(10),
since int,
);

select *from student1;

insert into student1 values('s1','c1',2016),('s2','c2',2017),('s1','c3',2017)


create table opertor
(
id int,
c1 varchar(10),
c2 varchar(10),
c3 varchar(10),
);

insert into opertor values(1,'red','yellow','blue'),
(2,'null','red','green'),(3,'yellow','null','vielet');

select * from opertor;

 



create table employees
(
emp_id int,
emp_name varchar(20),
emp_salary int,
);

insert into employees values(3,'ABC',12),(4,'DEF',21),(1,'GHI',32);

select * from employees;



_--------------------------------------string functions----------------------------------------------


select left('beasent pune',2) as left_part;

select right('beasent pune',5) as right_part;

select len('beasent pune')as length_string;

-----------------------------substring ( experssion,position,length)--------------------------------------------


select substring('i am in bangalore',6,15);

select *from pickily;

--------------------------wild cards % and '_'------------------------------------------------

select Product_name from pickily where Product_name like 's%';

select Product_name from pickily where  Product_name like 's____';

select Product_name from pickily where  Product_name like 'o__';

select getdate();
datepart - it will return the part of date and time,

select DATEPART(DAY,GETDATE()) AS TO_DATE;

SELECT DATEPART(MONTH,GETDATE()) AS CURRENTMONTH;

SELECT DATEPART(YEAR,GETDATE()) AS CURREBTYEAR;

SELECT *FROM table1;
SELECT * FROM table2;

SELECT * FROM table1
EXP
SELECT *FROM table2;

create table game
(
teamA varchar(10),
teamB varchar(20),
result varchar(20),
);

insert into game values('A','B','B'),('B','C','B'),('A','D','D'),('A','C','A');

select * from game;


create table employees1
(
emp_id int,
age int,
gender varchar(10),
popularity int,
);

insert into employees1 values(1,22,'M',6),(2,24,'F',7),(3,29,'F',1),(4,31,'M',4),
(5,27,'M',9),(6,25,'F',6),(7,33,'F',2);

select * from employees1;


create table employees2
(
id int,
locations varchar(10),
age int,
);

insert into employees2 values(2,'USA',22),(4,'CANADA',24),(5,'UK',29),(1,'INDIA',31),(6,'GERMANY',32),
(8,'NETHERLAND',27),(9,'HOLLAND',23);

select * from employees2;



create table a2
(
id int,
name varchar(10),
);

drop table a2;
insert into a2 values(1,'a'),(2,'b'),(3,'c'),(3,'d'),(4,'f'),(5,'g'),(5,'h'),(5,'i'),(6,'j');

select *from a2;

select *,rank() over(order by id) as denes_rank from a2;

select *, dense_rank() over(order by id desc) from a2;

select *, row_number() over(order by id desc) from a2;

select *,rank() over(partition by id order by id desc) as denes_rank from a2;

select *, dense_rank() over(partition by id order by id desc) from a2;

select *, row_number() over(partition by id order by id desc) from a2;


create table student_details
(
Stud_ID int,
Stud_Name varchar(20),
Marks int,
Subject Varchar(20));

drop table student_details;

insert into student_details values(101,'a',70,'Physics');
insert into student_details values(102,'b',75,'Biology');
insert into student_details values(103,'c',80,'Chemistry');
insert into student_details values(104,'a',82,'Biology');
insert into student_details values(105,'c',68,'Biology');
insert into student_details values(106,'b',73,'Physics');
insert into student_details values(107,'a',77,'Chemistry');
insert into student_details values(108,'d',74,'Biology');
insert into student_details values(109,'d',81,'Physics');
insert into student_details values(110,'d',79,'Chemistry');
insert into student_details values(104,'a',82,'Biology');
insert into student_details values(109,'d',81,'Physics');
insert into student_details values(110,'d',79,'Chemistry');


select *from student_details;

with cte as
(
select *, rank() over(partition by subject order by marks desc) as 
rankii from student_details
) select *from cte where rankii = 1;

with cte as
(
select *,row_number() over (partition by marks order by marks desc) as rankii from student_details
) select *from cte where rankii>1;

with cte as
(
select *, dense_rank() over(partition by marks order by marks desc) as rankii from  student_details
) select *from cte where rankii=1;

with cte as
(
select *,row_number() over (partition by marks order by marks desc) as rankii from student_details
) delete from cte where rankii>1;

select *from student_details;

-------------------------------------------------------------------------------------------------------
create table A
(
ID int,
name varchar(10),
Dept varchar(15),
Salary int,
);

insert into A values(1,'sam','lab',10000),(1,'sam','lab',10000),(1,'sam','lab',10000),
(2,'gita','yoga',20000),(3,'ram','dance',18000),(3,'ram','dance',18000),(4,'harish','onboard',22000),
(4,'harish','onboard',22000);


select *from A;

create table B
(
ID int,
name varchar(10),
Dept varchar(15),
Salary int,
);

select *from B;


insert into  B (ID,name,Dept,Salary) select ID,name,Dept,Salary from (select *, row_number() 
over (partition by ID order by ID) as rankii from A) as A where rankii =1;




select * from pickily;

select *from bikes;
select * from bikese;


drop database city;

create database W3data;

select * from [dbo].[Orders];

select *from OrderDetails;



exec  sp_help 'dbo.OrderDetails';

create view cources
as
select studrnt_code,subject,since
from student1;


select *from pickily;

create view pick
as
select Product_name,Qty,Stock
from pickily;

select * from pick;

exec sp_help 'dbo.pickily';

select Product_name,Qty,
case
when Qty >100 then 'the quantity is greater then 100'
when Qty > 50 then 'the quantity is greater then 50'
else 'the quntity is under 50'
END as quntitystatus
from pickily;

select * from [dbo].[student_details];

select subject,sum(Marks) AS total Marks,


case 
when sum(Marks)>300 then 'score for this subject is Biology'
when sum(Marks) > 150 then 'score for this subject physics'
else 'poor performance for this subject'
END as subjects
from student_details where subject in ('Biology','chemistry','Physics')
group by subject;


select * from [dbo].[Products];

