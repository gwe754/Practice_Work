use sakila;
select * from payment
where amount in (select amount from payment where payment_id=3 or payment_id=6);

--
select * from payment
where amount > any (select amount from payment where payment_id=2 or payment_id=6);

select * from payment
where amount > all (select amount from payment where payment_id=2 or payment_id=6);

-- get district and count where count of district > count of district of algerta

select district , count(*) as district_frequency from address
group by district
having count(district) >  (select count(district) from address where district='Alberta' );

select district, count(*)  from address where district='Alberta';
select * from address;

select * from payment;

-- column
select * from payment
where (staff_id,amount) in  (select staff_id,amount from payment where payment_id=6);

-- data types
-- int :	[width] : 3-9, unsigned, zerofill
-- 4byte= 32 bit
-- 2**32 size of integer, half signed and unsigned
-- tiny int 2**8=256
-- bigint(8 byte) mediumint(3 byte)  smallint(2 byte)
-- char : char(4) it is fixed
-- varchar: it is variable : varchar(4) h

create database regex1;
use regex1;
create table student1(roll int unsigned);
create table student(roll int);
insert into student values(3);
select * from student;
insert into student1 values(6);
insert into student1 values(4); -- only positive numbers allowed
create table student2(roll int(5) zerofill);
insert into student2 values(459);
select * from student2;
create table student3(id tinyint);
insert into student3 values(127);
select * from student3;
-- acid properties in rdbms
-- types of database
-- differnce between database and management system
 -- types of keys
 -- type of sql
 -- normalization
 -- group by
 -- joins
 -- difference between char and varchar
-- 1nf
-- subquery
-- query within query









