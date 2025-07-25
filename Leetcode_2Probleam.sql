use hacker_rank
 create table Customer(
 id int,
 name varchar(15),
 referee_id int);

 insert into Customer(id,name,referee_id)
 values(1,'Will',null),
 (2,'Jane',null),
 (3,'Alex',2),
 (4,'Bill',null),
 (5,'Zack',1),
(6,'Mark',2);

 ## Find the names of the customer that are
 ## not referred by the customer with id = 2.
 select * from Customer;

 select name from Customer
 where referee_id !=2 or referee_id is null;

 