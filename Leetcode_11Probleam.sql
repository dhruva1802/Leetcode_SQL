create table Students(
Student_id int,
Student_name varchar(20));

insert into Students(Student_id,Student_name)
values(1,'Alice'),
(2,'Bob'),
(13,'Johu'),
(6,'Alex');

Create table subjects(
subject_name varchar(20));
insert into subjects(subject_name)
values('Math'),
('Phy'),
('Programing');

create table exam(
Student_id int,
subject_name varchar(20));
insert into exam(Student_id,subject_name)
values(1,'Math'),
(1,'Phy'),
(1,'Programing'),
(2,'Programing'),
(1,'Phy'),
(1,'Math'),
(13,'Programing'),
(13,'Math'),
(13,'Phy'),
(2,'Math'),
(1,'Math');

select * from Students
select * from exam
select * from subjects

SELECT s.Student_id, s.Student_name, e.subject_name, COUNT(*) AS attended_exam
FROM Students AS s
JOIN Exam AS e ON s.Student_id = e.Student_id
GROUP BY s.Student_id, s.Student_name, e.subject_name;

use hacker_rank

select s.student_id,s.student_name,sub.subject_name,
count(e.subject_name) as attended_exams
from Students as s
cross join subjects as sub
left join exam as e
on s.student_id =e.student_id and
sub.subject_name =e.subject_name
group by s.student_id,s.student_name,sub.subject_name

select * from subjects
select * from exam
select * from Students