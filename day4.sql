
select second(now());
select adddate(now(),3);
select adddate(now(),9);

select date(now());
select month(now()), date_format(now(),'%m'), date_format(now(),'Year is %Y');
select month('09-17-24');
select curdate() from dual; -- current date
select str_to_date('09-17-24','%m-%d-%y');
select str_to_date('09/07/2024','%m/%d/%Y');
select * from employee_salary;
select sum(salary) from employee_salary; -- multi row function
select max(salary), min(salary) as minimum from employee_salary;
select count(*) from employee_salary; -- total rows

select distinct dept_id from employee_salary ; 
select count(distinct dept_id) from employee_salary;
select count(distinct first_name) from employee_salary;
select dept_id, count(*) from employee_salary group by dept_id;

-- group by 
-- aggregate functions which are applied on multiple functions and returns single value

select salary from employee_salary group by salary;

-- max, min amount
-- total payment every month
-- total amount where id between 3 to 300 not 4
-- from address table top 3 district by count



