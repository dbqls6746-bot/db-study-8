--문제1
select s.studno AS "학번"
    ,s.name AS "이름"
    ,sc.total AS "점수"
    ,h.grade AS "학점" 
from student s inner join score sc
on s.studno = sc.studno
inner join hakjum h
on sc.total between h.min_point and h.max_point
order by sc.total desc;

select *
from student;
--문제2
select s.studno AS "학번"
    ,s.name AS "이름"
    ,sc.total AS "점수"
    ,h.grade AS "학점" 
from student s inner join score sc
on s.studno = sc.studno
inner join hakjum h
on sc.total between h.min_point and  h.max_point
where s.deptno1 in(101,102)
order by sc.total desc;

--문제3
select s.name, s.grade, p.name, p.deptno, d.dname
from student s inner join professor p
on s.profno = p.profno
inner join department d
on p.deptno = d.deptno 
where p.deptno != 301;
    