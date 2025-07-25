use hacker_rank
create table Weather(
id int,
recordDate date,
temp int);

insert into Weather(id,recordDate,temp)
values(1,'2025-01-01',10),
(2,'2025-01-02',25),
(3,'2025-01-03',20),
(4,'2025-01-04',30)
select * from Weather
--Write a solution to find all dates' 
--id with higher temperatures compared to its 
--previous dates (yesterday).

SELECT w1.id
FROM Weather w1
JOIN Weather w2
  ON DATEDIFF(DAY, w2.recordDate, w1.recordDate) = 1
WHERE w1.temp > w2.temp;

