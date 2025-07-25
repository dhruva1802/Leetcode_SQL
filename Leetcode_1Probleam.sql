use hacker_rank
create table product(
product_id int,
low_facts char,
recyclable char)

insert into product(product_id,low_facts,recyclable)
values(0,'Y','N'),
(1,'Y','Y'),
(2,'N','Y'),
(3,'Y','Y'),
(4,'N','N')

## Write a solution to find the ids of products that are both low fat and recyclable.
select * from product
select product_id from product
where low_facts='Y' and recyclable='Y';