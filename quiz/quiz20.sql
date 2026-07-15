--문제1
select
    p.profno
    ,p.name
    ,d.dname
from professor p, department d
where d.deptno = p.deptno
and (p.deptno,p.hiredate) in (select deptno, min(hiredate)
                from professor
                group by deptno)
order by p.hiredate;

--문제2
select 
    name
    ,position
    ,pay
from emp2
where (position, pay) in (select position, max(pay)
                        from emp2
                        group by position)
order by pay;