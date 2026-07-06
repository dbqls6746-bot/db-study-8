--퀴즈1
select name || q'['s ID : ]' || ID || ' WEIGHT is ' || weight || 'kg' AS "ID AND WEIGHT" from student;

--퀴즈2
select ename || '(' || job || ') , ' || ename || q'[']' || job || q'[']' AS "NAME AND JOB" from emp;

--퀴즈3
select ename || q'['s]'|| ' sal is $' || sal AS "Name and Sal" from emp;