use hacker_rank
create table Tweet(
tweet_id int,
content varchar(100))

insert into Tweet(tweet_id,content)
values(1,'Let us code'),
(2,'More than fiteern char are there here!'),
(3,'Hii i am Dhruva'),
(4,'Hellow Dhruva'),
(5,'How are you!');

--Write a solution to find the IDs of the invalid tweets. 
--The tweet is invalid if the number of characters used in
--the content of the tweet is strictly greater than 15.

select tweet_id from Tweet
where len(content) >15;

