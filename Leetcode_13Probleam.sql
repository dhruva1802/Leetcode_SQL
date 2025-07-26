--Write a solution to find the confirmation rate of each user.
use hacker_rank
create table Signups(
user_id int,
time_stamp datetime)

insert into Signups(user_id,time_stamp)
values(3,'2020-03-21 10:16:13'),
(7,'2020-01-04 13:57:59'),
(2,'2020-07-29 23:09:44'),
(6,'2020-12-09 10:39:37');

create table confirmations(
user_id int,
time_stamp datetime,
action varchar(15));

insert into confirmations(user_id,time_stamp,action)
values(3,'2021-01-06 03:30:46','timeout'),
(3,'2021-07-14 14:00:00','timeout'),
(7,'2021-06-12 11:57:29','confirmed'),
(7,'2021-06-13 12:58:28','confirmed'),
(2,'2021-06-14 13:59:27','confirmed'),
(2,'2021-02-28 23:59:59','timeout');

select * from Signups
select * from confirmations


--Write your MySQL query statement below
select s.user_id,
IFNUll(round(sum(action='confirmed')/count(*),2), 0.00) 
as confirmation_rate
from Signups s
left join Confirmations c
on s.user_id =c.user_id
group by s.user_id

--or
SELECT 
    s.user_id,
    ISNULL(ROUND(
        SUM(CASE WHEN c.action = 'confirmed' THEN 1 ELSE 0 END) * 1.0 
        / NULLIF(COUNT(c.action), 0), 
        2), 
    0.00) AS confirmation_rate
FROM 
    Signups s
LEFT JOIN 
    Confirmations c
    ON s.user_id = c.user_id
GROUP BY 
    s.user_id;
