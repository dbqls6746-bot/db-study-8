--문제1
select 
    ename
    , replace(ename,substr(ename,3,2), '--') REPLACE
from emp
where deptno = 20;

--문제2
select
    name
    ,replace(jumin,substr(jumin,7,7), '-/-/-/-/-/-/-/') 주민뒷자리숨김
from student
where deptno1 = 101;

--문제3
select
    name
    ,tel
    ,replace(tel,substr(tel,5,3), '***') REPLACE
from student
where deptno1 = 102;

--응용
select name, tel,
substr(tel, 1, instr(tel,')')),
LPAD('*', (instr(tel, '-') - instr(tel,')') -1), '*'),
substr(tel, -5,5),
substr(tel, 1, instr(tel,')'))
|| LPAD('*', (instr(tel, '-') - instr(tel,')') -1), '*')
|| substr(tel, -5,5)
from student;

-- 문제4
select
    name
    , tel
    , replace(tel,substr(tel,-4,4), '****')
from student
where deptno1 = 101;