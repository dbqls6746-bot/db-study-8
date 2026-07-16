--저격형
select e.empno
    ,e.name
    ,e.deptno
    ,d.dname
    ,d.area
    ,e.pay
from emp2 e, dept2 d
where e.deptno = d.dcode
and e.pay > (select avg(e1.pay)
            from dept2 d1, emp2 e1
            where area = 'Seoul Branch Office'
            and e1.deptno = d1  .dcode);

--조건 유도형            
select e.empno
    ,e.name
    ,e.deptno
    ,d.dname
    ,d.area
    ,e.pay
from emp2 e, dept2 d
where e.deptno = d.dcode
and e.pay > (select avg(e1.pay)
            from dept2 d1, emp2 e1
            where e1.deptno = d1.dcode
            and d1.area =
                (select area
                from dept2 d2, emp2 e2
                where e2.deptno = d2.dcode  
                and e2.name = 'AL Pacino')
            );

--조건 유도형(ANSI버전)            
select e.empno
    ,e.name
    ,e.deptno
    ,d.dname
    ,d.area
    ,e.pay
from emp2 e inner join dept2 d
on e.deptno = d.dcode
where e.pay > (select avg(e1.pay)
            from dept2 d1 inner join emp2 e1
            on e1.deptno = d1.dcode
            where d1.area =
                (select area
                from dept2 d2 inner join emp2 e2
                on e2.deptno = d2.dcode  
                where e2.name = 'AL Pacino')
            );


    