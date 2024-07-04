select * from employee_demographics;
select * from employee_demographics where employee_id in(3,5,7);
select * from employee_demographics where first_name like 'tom';
select * from employee_demographics where first_name like 'A%';
-- G is first and A is 3
select * from employee_demographics where first_name like 'S__S%';
select * from employee_salary;

-- first letter s 
-- last 3 character d
-- min 5 char and second letter is c
-- firstname based on last name where second letter is i and last second m
-- select * from employee_salary where occupation='Office Manager' and employee_id=5;-- 
-- select * from employee_salary where dept_id in(1,4) and emplyee_id>3;
select * from employee_salary where (dept_id=1 or dept_id=4) and employee_id>3;
-- and condition is solved before or hence use in operator-- 
/*fuctions - string,date,time




