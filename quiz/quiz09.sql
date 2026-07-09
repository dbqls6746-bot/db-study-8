select
    profno
    ,name
    ,pay
    ,bonus
    ,to_char((pay*12) + NVL(bonus, 0), '999,999') AS "TOTAL"
from professor
where deptno = 201;

select
    empno,
    ename,
    comm,
    NVL2(comm, 'Exist', 'NULL') AS " NVL2"
from emp
where deptno = 30;
