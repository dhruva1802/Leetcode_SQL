use hacker_rank
--Write a solution to find managers with at least five direct reports.
create table Emp_1
(id int,
name varchar(20),
department varchar(20),
ManagerID int);

insert into Emp_1(id,name,department,ManagerID)
values(101,'john','A',null),
(102,'Dan','A',101),
(103,'James','A',101),
(104,'Amy','A',101),
(105,'Anne','A',101),
(106,'Ron','B',101);

--Write a solution to find managers with at least five direct reports.
--first self join table

select e.name
from Emp_1 as e
inner join Emp_1 as e2
on e.id=e2.ManagerID
group by e.name
having count(*) <=5

--or
select e1.name
from Emp_1 as e1
inner join Emp_1 as e2
on e1.id=e2.ManagerID
group by e1.name
having count(e2.ManagerID) >=5;