show databases;

select database();
show tables;
/*comment
*/
select* from employee_demographics;
describe employee_demographics;
-- select first_name, from employee_demographics;
select age,age+5 from employee_demographics;
-- no changes in orignal table
select age,age*2 from employee_demographics;
select * from employee_demographics where age=61;
select * from employee_demographics;
select * from employee_demographics where gender='Female';
select  age from employee_demographics where gender='Female';
select * from employee_salary;
select * from employee_salary where salary>50000;
select first_name,occupation from employee_salary where salary>50000 and dept_id=1;
