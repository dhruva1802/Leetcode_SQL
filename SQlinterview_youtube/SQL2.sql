use hacker_rank
select * from emp
--1WAQ FIND 2ND HIGEST SALARY
--1 WAY (1st find max salary and used value in where clause)
select max(salary) as max_salary from emp
where salary < 60000;


--2 WAY 
select max(salary) as max_salary from emp
where salary  < (select max(salary) from emp);

--3 WAY
with rn as (
select *,
row_number()over(order by salary desc) as rn
from emp)
select * from 
rn
where rn=2;

--WAQ to find 3rd higest salary
with rn as (
select *,
row_number()over(order by salary desc) as rn
from emp)
select * from 
rn
where rn=3;

select * from emp
--WAQ to find 2nd higest salary based on dept
with rank as (
select *,
ROW_NUMBER()over(partition by dept_id order by salary desc) as rn
from emp)
select * from rank
where rn =2;


--WAQ to find bottom 2 salary 
select top 2
salary from emp
order by salary asc

--WAQ TO FIND TOP2 SALARY
select top 2
salary from emp
order by salary desc

--WAQ lowest salary emp in each deprtment
select min(salary) as min_salary,dept_id
from emp
group by dept_id;

--WAQ find 3rd to 5th salary emp
with rn as(
select *,
ROW_NUMBER()over(order by salary desc) as rn
from emp)
select * from rn
where rn between 3 and 5;


