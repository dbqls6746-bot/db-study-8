--문제1
select
    d.dname
    ,s.height AS "max_height"
    ,s.name
    ,s.height
from student s, department d
where d.deptno = s.deptno1
and (s.deptno1, s.height) in (select deptno1, max(height)
                            from student
                            group by deptno1); 

--문제2
select
    s.grade
    ,s.name
    ,s.height
    ,(select round(avg(height), 1) from st  udent where grade = s.grade) AS avg_height
from student s
where s.height > ( select avg(height)
                        from student
                        where s.grade = grade)
order by grade;
