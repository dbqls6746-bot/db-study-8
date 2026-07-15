--문제1
select 
    s.name
    ,s.deptno1
    ,d.dname
from student s, department d
where s.deptno1 = d.deptno
and s.deptno1 =(select deptno1
                    from student
                    where name = 'Anthony Hopkins')
order by s.name;

--문제2                    
select p.name
    ,p.hiredate
    ,d.dname
from department d, professor p
where d.deptno = p.deptno
and hiredate>(select hiredate
            from professor
            where name = 'Meg Ryan')
order by p.hiredate;

--문제3
select
    name
    ,weight
from student
where weight > (select avg(weight)
                from student
                where deptno1 = 201);

--문제4                
select 
    empno
    ,name
    ,deptno
from emp2
where deptno in (select dcode
                from dept2
                where area = 'Pohang Main Office');
















