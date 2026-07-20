--/***********************************************************************************************************/
FK(외래키)

student (profno 컬럼)     ->      professor (profno)

외래키 FK : 다른테이블에 있는 키값 참조하는 컬럼
- 참조하는 테이블(부모테이블)에 존재하는 값만 사용 가능 (+ null 가능)
- 외래키 대상으로 설정된 부모테이블 입장에서
  자신을 참조하는 자식테이블의 데이터가 존재하면, 삭제 불가 (설정에 따라)
  
외래키 삭제 조건
ON DELETE CASCADE;     부모데이터 삭제시 -> 해당 값을 참조하는 자식 데이터도 같이 삭제
ON DELETE SET NULL;    부모데이터 삭제시 -> 해당 값을 참조하는 자식 데이터를 NULL 값으로 변경


create table T_CLUB
(
    id number(3) PRIMARY KEY,
    name varchar2(32)
);

-- T_TABLE명
-- V_VIEW명

drop table t_member;

create table T_MEMBER
(
    id number(3) PRIMARY KEY,
    name varchar2(32),
--    club_id REFERENCES T_CLUB(id)  --외래키(FK) 설정
--    club_id REFERENCES T_CLUB(id) on delete cascade   --외래키(FK) 설정
    club_id REFERENCES T_CLUB(id) on delete set null    --외래키(FK) 설정
);

select * from t_club;
select * from t_member;



select * from T_CLUB;

INSERT INTO T_CLUB VALUES(1, '독서');
INSERT INTO T_CLUB VALUES(2, '게임');
INSERT INTO T_CLUB VALUES(3, '등산');
INSERT INTO T_CLUB VALUES(4, '낚시');

select * from T_MEMBER;

INSERT INTO T_MEMBER VALUES(1, '이름1', 2);
INSERT INTO T_MEMBER VALUES(2, '이름2', 1);
INSERT INTO T_MEMBER VALUES(3, '이름3', 1);

select *
from t_member m, t_club c
where m.club_id = c.id;

insert into t_member values (1,'이름4', 3);       --member PK id 중복
insert into t_member values (null,'이름4', 3);    --member PK id not null
insert into t_member values (4,'이름4', 5);       --"부모 키가 없습니다"
--FK 참조 부모테이블에 id값 참조 -> id 값 존재 범위 1~4까지만 존재 5는 존재하지 않음.
insert into t_member values (4,'이름4', null);
insert into t_member values (5,'이름5', 3); 

select *
from t_member m, t_club c
where m.club_id = c.id(+);

select *
--delete
from t_club
where id =3;
--자식 레코드가 발견되었습니다
--id 3인 데이터를 외부 자식 테이블에서 참조하고 있는 상태 -> 삭제 불가

참조가 있으면? 삭제 불가
삭제 하고 싶으면? 참조하는 자식테이블 데이터 먼저 삭제
select *
--delete
from t_member
where id = 5;   --자식 테이블 데이터 먼저 삭제

select *
--delete
from t_club     --참조하는 외부 테이블 데이터가 없으면 삭제 가능
where id = 3;


-----------------------
on delete cascade

select *
--delete
from t_club
where id =1;

select *
from t_member;


--------------------------
ON DELETE SET NULL

select *
--delete
from t_club
where id = 1;

select *
from t_member;