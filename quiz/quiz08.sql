--문제1
select
    empno
    ,ename
    ,to_char((sal*12)+comm,'999,999') AS "SALAY"
from emp
where ename = 'ALLEN';

--문제2
select
    empno
    ,ename
    ,to_char(hiredate, 'YYYY-MM-DD') AS "HIREDATE"
    ,to_char((sal*12)+comm,'$999,999') AS "SAL"
    ,to_char(((sal*12)+comm)*1.15, '$999,999') AS "15%인상"
from emp
where comm is not null;