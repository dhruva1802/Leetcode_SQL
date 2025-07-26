use hacker_rank
--1WAQ to create new table structure based on exisiting table structure
--only schema need to create
SELECT * INTO EMP4 from emp
WHERE 1=2;
SELECT * FROM EMP4

--2WAQ TO CREATE NEW TABLE BASED ON EXISTING TABLE
--NOTE (COPY DATA FROM ONE TABLE TO ANOTHER)
SELECT * INTO EMP5 FROM emp
where 1=1
SELECT * FROM EMP5

--3WAQ TO FIND DUPLICATE RECORD
--FIRST WAY
SELECT ID,COUNT(*) FROM EMP5
GROUP BY ID
HAVING COUNT(*) >1;

--2ND WAY
with rn as(
SELECT *,
ROW_NUMBER()OVER(partition by id order by id ) as rn
from EMP5)
select * from rn
where rn > 1;

--4WAQ to delate duplicate record
with rn as(
SELECT *,
ROW_NUMBER()OVER(partition by id order by id ) as rn
from EMP5)
delete from rn
where rn >1;


