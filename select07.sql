/*----------------------------------------------*/
복수행함수   (집계)

COUNT(대상)   갯수세기

select *
from emp;

select COUNT(*)
from emp;

-- 갯수 대상식별자 (*, 기본키 Primary Key / PK - 유니크(중복X), 값존재)

select
    count(empno)
    ,count(ename)
    ,count(mgr)
    ,count(comm)    --NULL이 아닌 값의 갯수
    --, empno
    ,null
from emp;

select
    count(*)
from emp
where comm is not null;

select
    count(*)
from emp
where comm is null;

--student 4학년 몇명?
select count(*)
from student
where grade = 4;


수치 집계
SUM / aVG / MAX / MIN / STDDEV / VARIANCE

-- 총 직원 몇명, 총급여 얼마냐
select
    count(*), SUM(sal), SUM(comm)
from emp;

-- 10, 20 부서에 다니는   직원 몇명, 총급여
select
    count(*), SUM(sal)
from emp
where deptno in(10,20);

select
    COUNT(height)
    ,SUM(height)
    ,AVG(height)
    ,MAX(height)
    ,MIN(height)
    ,STDDEV(height)
    ,VARIANCE(height)
    ,AVG(weight)
from student;


/*--------------------------------*/
그룹화하기 group by

select ...
from ...
where ...
group by 컬럼대상을 지정(지정돈 컬럼을 기준으로 그룹지어서 계산)
         group by 에 명시한 컬럼은 select 조회에 사용 가능
having
order by;

--학생들 각 학년별 평균키

select '1학년', AVG(height)
from student
where grade = 1
UNION ALL
select '2학년', AVG(height)
from student
where grade = 2
UNION ALL
select '3학년', AVG(height)
from student
where grade = 3
UNION ALL
select '4학년', AVG(height)
from student
where grade = 4;

select
    grade, AVG(height)
from student
group by grade;

select
    grade, count(*),AVG(height)
from student
group by grade
order by grade asc;

select
    studno, count(*),AVG(height)
from student
group by studno;

select *
from student;

--1,2,3 학년 학년별 평균키 학년 기준 내림차순 정렬

select
    grade 학년 ,avg(height) 평균키
from student
where grade in(1,2,3)
group by grade
order by 학년 desc;


1) 급여가 2000 이상인 직원들 대상으로 부서별 평균 급여
select
    deptno,
    AVG(sal)
from emp
where sal >= 2000
group by deptno;

2) 부서별 평균급여가 2000인 이상인 부서별 평균급여
select
    deptno,
    round(AVG(sal),0)
from emp
group by deptno
having AVG(sal) >= 2000;


student
학생 각 학년별 평균 몸무게
평균 몸무게가 65키로 이상 경우만

select 
    grade, avg(weight)
from student
group by grade
having AVG(weight) >= 65;

student
4학년을 제외하고
학생 각 학년별 평균 몸무게
평균 몸무게가 65키로 이상 경우만
학년별 오름차순 정렬

select 
    grade, avg(weight)
from student
where grade != 4
group by grade
having AVG(weight) >= 65
order by grade;


--order by grade, height
select deptno, avg(sal)
from emp
group by deptno;

select job, avg(sal)
from emp
group by job;


select job, deptno, avg(sal)
from emp
group by job, deptno
order by job, deptno;