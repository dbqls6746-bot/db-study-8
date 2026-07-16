CREATE TABLE temp_dept2
AS
SELECT * FROM dept2;
--문제1
insert into temp_dept2
values(9010,'temp_10', 1006, 'temp area');
--문제2
insert into temp_dept2 (dcode,dname,pdept)
values( 9020, 'temp_20','1006');

CREATE TABLE new_professor
AS
SELECT profno, name, pay, bonus FROM professor
where profno < 3000;

update new_professor
set bonus = 100
--select * from new_professor
where name = 'Winona Ryder';

select * from temp_dept2;

select * from new_professor;