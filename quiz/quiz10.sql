--문제1
select
    deptno
    ,name
    ,DECODE(deptno, 101 ,DECODE(name, 'Audie Murphy', 'BEST!')) DECODE
from professor;

--문제2
select
    deptno
    ,name
    ,CASE
        WHEN name = 'Audie Murphy' and deptno = 101 THEN 'BEST!'
        WHEN deptno = 101 THEN 'GOOD!'
    END 비고
from professor;

--문제3
select
    deptno
    ,name
    ,CASE
        WHEN name = 'Audie Murphy' and deptno = 101 THEN 'BEST!'
        WHEN deptno = 101 THEN 'GOOD!'
        ELSE 'N/A'
    END 비고
from professor;

--문제4
select
    name
    , jumin
    ,DECODE(substr(jumin,7,1), 1, '남자', '여자') AS "성별"
from student
where deptno1 = 101;

--문제5
select
    name
    ,tel
    ,DECODE(substr(tel, 1, instr(tel,')')-1),'055','경남','02','서울','031','경기','051','부산','052','울산') AS "지역명"
from student
where deptno1 = 101;


