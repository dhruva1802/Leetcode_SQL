Create table city(
ID int,
Name varchar(17),
COUNTRYCODE varchar(5),
DISTRICT varchar(20),
POPULATION int)

insert into city(ID,Name,COUNTRYCODE,DISTRICT,POPULATION)
values(3878, 'Scottsdale', 'USA', 'Arizona', 202705),
(3965, 'Corona', 'USA', 'California' ,124966),
(3973, 'Concord', 'USA', 'California' ,121780),
(3977 ,'Cedar'  ,'USA', 'Iowa', 120758),
(3982 ,'Coral Springs' ,'USA' ,'Florida', 117549),
(2003, 'Nashik' ,'IND','Nashik',200000),
(2006, 'sinner','SIN','Nashik',10000);

select * from city;
--WAQ to fetch country usa and populaion > 100000.
select * from city
where COUNTRYCODE ='USA' and
POPULATION > 100000;

--WAQ to fetch city where last and first lateer contain 'A','E','I','O','U'
select * from city
where Name like '%A' or Name LIKE  '%E' or NAME LIKE '%I'or NAME LIKE  '%O'or Name like '%U'
or name like 'A%' or name like 'E%' or name like 'I%' or name like 'O%' or name like '%U'
and  POPULATION < 124965;

--
create table station(id int,
city varchar(100),
state varchar(50),
LAT_N int,
LONG_W int);

insert into station(id ,city,state,LAT_N,LONG_W)
values(
794 ,'Kissee' ,'Mills MO', 139, 73), 
(824, 'Loma Mar', 'CA', 48, 130), 
(603, 'Sandy Hook', 'CT' ,72, 148), 
(478, 'Tipton' ,'IN', 33, 97), 
(619, 'Arlington' ,'CO', 75, 92),
(711, 'Turner', 'AR', 50, 101),
(839, 'Slidell', 'LA', 85, 151);

--WAQ 
SELECT DISTINCT CITY
FROM STATION
WHERE LOWER(LEFT(CITY, 1)) IN ('a', 'e', 'i', 'o', 'u')
  AND LOWER(RIGHT(CITY, 1)) IN ('a', 'e', 'i', 'o', 'u')
  AND UPPER(LEFT(CITY,1)) IN('A','E','I','O','U')
  AND UPPER(RIGHT(CITY,1)) IN('A','E','I','O','U');

--WAQ to fetch city name not stary with vowels
select distinct city
from station
where LOWER(LEFT(CITY, 1)) NOT IN ('a', 'e', 'i', 'o', 'u');


select name from city;
select distinct city 
from station
where lower(Right(city,1)) not in('a', 'e', 'i', 'o', 'u');