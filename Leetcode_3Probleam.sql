use hacker_rank
 create table World(
 name varchar(20),
 continent varchar(20),
 area varchar(20),
 population varchar(20),
 gdp varchar(20));

 insert into World(name,continent,area,population,gdp)
 values('Afghanistan', 'Asia' ,652230,25500100,20343000000),
 ('Albania','Europe',28748,2831741,12960000000),
('Algeria','Africa',2381741,37100000 ,188681000000),
('Andorra','Europe' ,468 ,78115 ,3712000000),
('Angola' ,'Africa', 1246700,20609294 ,100990000000);

-- WAP to select name, population,area of country 
--where area <= 3000000 and population <=25000000

select * from World;

select name, population,area
from World
where population >=  25000000 or area >= 3000000;