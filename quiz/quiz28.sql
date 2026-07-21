--문제1
create table t_item_list
(
no NUMBER(6) PRIMARY KEY,
item_name VARCHAR2(24) not null,
price NUMBER(6),
create_date date default sysdate
);

--문제2
create sequence t_item_list_pk_seq
increment by 1  
start with 1
maxvalue 999999
nocycle;

--문제3
select t_item_list_pk_seq.nextval from dual;

--문제4
insert into t_item_list values ( t_item_list_pk_seq.nextval, '키보드',10000,sysdate);

select * from t_item_list;