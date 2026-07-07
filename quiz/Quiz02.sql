--문제1번
select *
from emp
order by ename asc;

--문제2번
select *
from emp
order by deptno asc, sal desc;

--문제3번
select *
from emp
where sal > 2000
order by sal desc;

--문제4번
select *
from student
where grade != 1
order by  birthday desc;
