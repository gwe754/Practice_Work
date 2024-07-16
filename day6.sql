use regex1;
# constraint
-- 
create database test2;
use test2;
create table s(sid int,email char(20) not null);
insert into s values(1,'kashish');
insert into s values(2,null);

create table s1(sid int,sname varchar(20) default "regex");
insert into s1(sid) values(3);

-- unique
create table s2(sid int,sname varchar(20) unique );
insert into s2(sid,sname) values(10,"tushar");
insert into s2(sid,sname) values(11,"kashish");
insert into s2 values(12,"gia");
select * from s2;


-- primary
-- it identifies each record 
-- query optimize
-- not null, unique
-- 
create table s3(sid int primary key, age int );
insert into s3 values(11);
insert into s3
insert into s3 value(null);

-- foreign key is connected to primary key or unique key




-- left join
use regex1;
create table product(pid int primary key,pname char(20)); -- entity1
insert into product values(10,'mobile'),(11,'apple'),(12,'tv');
create table orders(oid int,city char(20),pno int ); -- entity 2
insert into orders values(1009,'jaipur',11),(1010,'ajmer',12),(1011,'surat',12);
select * from orders;
show databases;
-- on clause
select oid,city,pno,pid from orders
join product
on(orders.pno=product.pid);

select oid,city,pno,pid from orders
join product
on(orders.pno=product.pid);

-- diferent types of relation bettween entity
-- this table has 1 to many relation






 











