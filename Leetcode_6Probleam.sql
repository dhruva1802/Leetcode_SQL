use hacker_rank
create table Employees(
id int,
name varchar(20));

insert into Employees(id,name)
values(1,'Alice'),
(7,'Bob'),
(11,'Meir'),
(90,'Winston'),
(3,'Jonathan');


create table EmployeeUNI(
id int,
unique_id int);
insert into EmployeeUNI(id,unique_id)
values(3,1),
(11,2),
(90,3);


select * from Employees
select * from EmployeeUNI

--Write a solution to show the unique ID 
--of each user, If a user does not have a unique ID 
--replace just show null.

select e1.unique_id,e2.name
from EmployeeUNI as e1
right join Employees as e2
on e1.id=e2.id;
