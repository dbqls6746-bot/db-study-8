select
    empno   AS "사번"
    ,name   AS "이름" 
    ,birthday   AS "생년월일"
    ,hobby      AS "취미"
    ,pay        AS "급여"
    ,pay+(pay*0.5) AS "성과금"
    --,replace(EMP_TYPE, 'employee', 'Family')   AS "직원분류"
    ,substr(emp_type, 1, instr(emp_type, ' ')) || 'family' AS "직원분류"
    ,tel
    ,CASE
        WHEN pay between 35000001 and 45000000 THEN '하'
        WHEN pay between 45000001 and 60000000 THEN '중'
        WHEN pay >= 60000001 THEN '상'
        ELSE '화이팅'
    end as "급여수준"
from emp2
where TO_CHAR(birthday, 'YY') between '70' and '79'
and substr(tel, 1, instr(tel,')')-1) in('02','031');


