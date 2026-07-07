--문제1
select deptno AS "부서번호"
, dname AS "부서이름"
, loc AS "위치"
from dept;

--문제2
select name || '(' || id || ')' AS "교수정보"
, position
, hiredate AS "입사일자"
, email AS "이메일"
from professor;