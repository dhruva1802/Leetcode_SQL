use hacker_rank
create table Sales(
sale_id int,
product_id int,
year int ,
quantity int,
price int);

insert into Sales(sale_id,product_id,year,quantity,price)
VALUES(1,100,2008,10,5000),
(2,100,2009,12,5000),
(7,200,2011,15,9000);

CREATE TABLE Product1(
product_id INT,
product_name VARCHAR(20));

INSERT INTO Product1(product_id,product_name)values(
100,'Nokia'),
(200,'Apple'),
(300,'Samsung');

select * from Sales
select * from Product1

--Write a solution to report the product_name, year, 
--and price for each sale_id in the Sales table.

select p1.product_name,s1.year,s1.price
from Sales as s1
join Product1 as p1
on s1.product_id=p1.product_id;