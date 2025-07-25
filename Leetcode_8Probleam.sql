use hacker_rank
create table Visits(
visit_id int,
customer_id int)

insert into Visits(visit_id,customer_id)
values(1,23),(2,9),(4,30),(5,54),(6,96),(7,54);

insert into vistis(Visit_id,Customer_id)
VALUES(8,54)

create table Transactions(
transaction_id int,
visit_id int,
amount int);


insert into Transactions(transaction_id,visit_id,amount)
values(2,5,310),(3,5,300),(9,5,200),(12,1,910),(13,2,970);

select * from Visits
select * from Transactions

--Write a solution to find the IDs of the users
--who visited without making any transactions and 
--the number of times they made these types of visits.
select  distinct v1.customer_id,count(v1.customer_id) as count_no_trans
from Visits as v1
left join Transactions as t1 
on t1.visit_id =v1.visit_id
where t1.transaction_id is null
group by v1.customer_id
