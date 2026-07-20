drop table t_menu_12;
create table T_MENU_12
(
    menu_id number(4) PRIMARY KEY,
    menu_name varchar2(128) not null,
    price number(10),
    kind varchar2(64),
    develop_date date
);

insert into T_MENU_12 (menu_id,menu_name, price, kind, develop_date)
values(1,'싸이버거',6000,'완전식품', sysdate);

insert into T_MENU_12 (menu_id,menu_name, price, kind, develop_date)
values(2,'콩나물비빔밥',7000,'탄수화물', sysdate);

insert into T_MENU_12 (menu_id,menu_name, price, kind, develop_date)
values(3,'닭가슴살',3000,'단백질', sysdate);

insert into T_MENU_12 (menu_id,menu_name, price, kind, develop_date)
values(4,'베트남쌀국수',8000,'탄수화물', sysdate);

insert into T_MENU_12 (menu_id,menu_name, price, kind, develop_date)
values(5,'라면',2000,'밀가루', sysdate);

select * from T_MENU_12;

update T_MENU_12
set price = 8500
where menu_name = '베트남쌀국수';

--select *
delete
from T_MENU_12
where menu_name = '라면';