--문제1
select 
    studno 번호
    , name 이름
    , id 아이디
from student
where height between 160 and 175
UNION ALL
select 
    profno 번호
    , name 이름
    , id 아이디
from professor
where bonus is null
and deptno in(101,102,103,201);

--문제2
select 
    '이름:' || name 이름
    ,'아이디:' || id 아이디
    ,'주민번호:' || rpad(substr(jumin, 1, 6) || '-', 14, substr(jumin, 7,7)) 주민번호
from student;
