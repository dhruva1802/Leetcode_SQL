use hacker_rank
select * from employee
create table employee(
empId int,
name varchar(10),
supervisor int,
salary int);
insert into employee(empId,name,supervisor,salary)
values(3,'Brad',null,4000),
(1,'John',3,1000),
(2,'Dan',3,2000),
(4,'Thomas',3,4000);

select * from Bonus

--Write a solution to report the name and 
--bonus amount of each employee with a bonus less than 1000.
SELECT e.name,b.bouns
from employee as e
left join Bonus as b
on e.empId=b.empId
where b.bouns <1000 or b.bouns is null;
