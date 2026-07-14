--문제1
select
    s.name AS "STU_NAME"
    ,s.deptno1
    ,d.dname AS"DEPT_NAME"
from student s inner join department d
on s.deptno1 = d.deptno
order by s.deptno1;

--문제2
select
    e.name
    ,e.position
    ,to_char (e.pay, '999,999,999')
    ,to_char (p.s_pay, '999,999,999') AS "LOW PAY"
    ,to_char (p.e_pay, '999,999,999') AS "HIGH PAY"
from emp2 e left outer join p_grade p
on e.position = p.position
where e.position is not null
order by p.e_pay;

--문제3
select
    e.name
    ,2010- to_char(birthday, 'YYYY') +1  as "한국나이"
    ,e.position as "지금포지션"
    ,p.position as "그나이에맞는포지션"
from emp2 e left outer join p_grade p
on (2010- to_char(birthday, 'YYYY') +1) between p.s_age and p.e_age
order by 한국나이;

--만나이
select
    birthday
    ,to_date('2010-05-30')
    ,to_date('2010-05-30') - birthday
    ,(to_date('2010-05-30')- birthday)/365
    ,trunc((to_date('2010-05-30')- birthday)/365)
    ,months_between(to_date('2010-05-30'), birthday)
    ,months_between(to_date('2010-05-30'), birthday)/12
    ,trunc(months_between(to_date('2010-05-30'), birthday)/12)
from emp2;
--문제4
select 
    c.gname
    ,c.point
    ,g.gname
from customer c inner join gift g
on c.point >= g_start
where g.gno = 7
order by c.gno, g.gno;

--문제 5
select
    p1.profno
    ,p1.name
    ,p1.hiredate
    ,count(p2.profno) AS "COUNT"
from professor p1 LEFT OUTER JOIN professor p2
on p1.hiredate > p2.hiredate
GROUP BY p1.profno, p1.name, p1.hiredate
order by count(p2.profno);

--문제6
select
    e1.empno
    ,e1.ename
    ,e1.hiredate
    ,count(e2.empno) AS "COUNT"
from emp e1 LEFT OUTER JOIN emp e2
on e1.hiredate > e2.hiredate
GROUP BY e1.empno, e1.ename, e1.hiredate
order by count(empno);

select *
from professor;