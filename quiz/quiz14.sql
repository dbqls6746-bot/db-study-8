--문제1
select
    deptno AS "부서번호"
    ,avg(sal)  AS "평균급여"
from emp
group by deptno
having avg(sal)>=2000;

--문제2
select
    P_DATE AS "판매일자"
    ,SUM(P_QTY) AS "판매수량"
    ,SUM(P_TOTAL) AS "판매금액"
from panmae
group by P_DATE;

--문제3
select
    P_DATE AS "판매일자"
    ,P_CODE AS "상품코드"
    ,SUM(P_QTY) AS "판매수량"
    ,SUM(P_TOTAL) AS "판매금액"
from panmae
group by ROLLUP (P_DATE, P_CODE);












