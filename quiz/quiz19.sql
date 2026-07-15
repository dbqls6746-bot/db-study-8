--문제1
select name
    ,position
    ,pay
from emp2
where pay > (select min(pay)
            from emp2
            where position = 'Section head');
            
--문제2
select name
    ,grade
    ,weight
from student
where weight < (select min(weight)
                from student
                where grade = 2);
                
--문제3
select d.dname
    , e.name
    , e.pay
from emp2 e, dept2 d
where e.deptno = d.dcode
and pay < all(select avg(pay)
            from emp2
            group by deptno);
            
select * from dept2;