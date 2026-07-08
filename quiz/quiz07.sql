--문제1
select
    studno
    ,name
    ,to_char(birthday, 'YYYY-MM-DD') AS "BIRTHDAY"
from student
where to_char(birthday, 'MM') = 01;

--문제2
select
    empno
    ,ename
    ,hiredate
from emp
where to_char(hiredate, 'mm') in(01,02,03);