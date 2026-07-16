/******************************/
DML 테이블 내부의 데이터 조작

데이터(행) 컬럼 값들...
저장 INSERT
수정 UPDATE
삭제 DELETE
병합 MERGE

INSERT INTO 테이블명 (컬럼명, 컬럼명, ....)
VALUES (데이터값, 데이터값, ...)

전체 컬럼에 데이터 저장 + 컬럼 순서 맞춰서 저장 ---> 컬럼명 생략 가능
INSERT INTO 테이블명 (컬럼명, 컬럼명, ....)
VALUES (데이터값, 데이터값, ...)
;

select * from NEW_TABLE1;

insert into new_table1 (no,name,birth)
values (1,'이름1',sysdate);

commit;
rollback;

insert into new_table1 (no,name,birth) --순서 다름. 컬럼 타입 달라서 저장 안됨
values ('이름2',2,sysdate);

insert into new_table1 (name,no,birth)
values ('이름2',2,sysdate);


insert into new_table1 (name,no,birth)
values ('이름3',3,to_date('2020-01-30'));

select * from new_table1;

insert into new_table1
values (4,'이름4',sysdate);

insert into new_table1 (no, name)
values (5,'이름5');

insert into new_table1
values (6,'이름6',null);

insert all
into new_table1 values (7, '이름7', null)
into new_table1 values (8, '이름8', sysdate)
into new_table1 values (9, '이름9', to_date('2025-12-11'))
select * from dual;

/*------------------------------------------*/
다른 테이블 데이터 조회 -> 복사 저장

select * from new_table1;
select * from new_table2;

insert into new_table2
select no, name, birth from new_table1;


insert into new_table2
select no, name, birth from new_table1
where no < 5;

insert into new_table2
select 10, '이름10', sysdate from dual;

/*--------------------------------------------*/
수정 update

update 테이블명
set 컬럼명 = 값,
    컬럼명 = 값,
    컬럼명 = 값
where 조건;


select *
from dept3;

Seoul Branch Office -> Incheon Branch Office

update dept3
set area = 'Incheon Branch Office'
--select * from dept3
where area = 'Seoul Branch Office';

commit;


Sales1 Team -> Sales First Team

update dept3
set dname = 'Sales First Team'
--selet * from dept3
where dcode = 1008; -- udate에 조건을 누락하면 테이블내의 전체 데이터가 수정됨 주의!!!


create table professor2
AS
select * from professor;

select * from professor2;
> bonus 받는 교수들 보너스 금액 +100 인상

update professor2
set bonus = 200
where profno = 1001;

update professor2
set bonus = bonus + 100
--select * from professor2
where bonus is not null;

/*-------------------------------------*/
transaction
TCL

commit; 확정
rollback; 취소(되돌리기)

DML(insert, update, delete) -> commit or rollback 수행


select * from new_table2;
insert into new_table2 values( 11, '이름11', sysdate);
commit;
rollback;


/*-------------------------------------*/
delete 데이터 삭제
(DB tool 에서 delete 쿼리 수행시 rollback 가능 : 단, 자동commit 설정이 아닌 상탱일 경우)

delete from 테이블명
where 조건;

select * from dept3;

select *
--delete
from dept3
where dcode = '0001';

commit;
