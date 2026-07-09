select
round(AVG(sal),1)
from emp;

select
round(AVG(sal),1)
from emp
where deptno = 30;

select
deptno,
round(AVG(sal),1)
from emp
group by deptno
order by deptno;

select
count(deptno),
round(AVG(sal),1)
from emp
group by deptno
order by deptno;

select
job,
round(AVG(sal),1)
from emp
group by job
order by job;

select
job,
round(AVG(sal),1),
MAX(sal)
from emp
group by job
order by job;

select
deptno,
round(AVG(sal),1),
MAX(sal)
from emp
group by deptno
order by deptno;


