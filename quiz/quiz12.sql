select
    name
    ,jumin
    ,birthday
    ,CASE 
        When substr(jumin,3,2) between '01' and '03' then '1분기'
        When substr(jumin,3,2) between '04' and '06' then '2분기'
        When substr(jumin,3,2) between '07' and '09' then '3분기'
        When substr(jumin,3,2) between '10' and '12' then '4분기'
    END "분기"
from student;

select
    empno
    ,ename
    ,sal
     ,CASE 
        When sal between 1 and 1000 then 'Level 1'
        When sal between 1001 and 2000 then 'Level 2'
        When sal between 2001 and 3000 then 'Level 3'
        When sal between 3001 and 4000 then 'Level 4'
        ELSE 'Level 5'
    END "급여등급"
from emp;
    