--문제1
DELETE FROM 테이블명; -- 테이블 내 조건에 맞는 내부 데이터를 삭제하는 명령어 롤백 가능
TRUNCATE TABLE 테이블명; -- 테이블 내 모든 내부 데이터를 삭제하는 명령어 롤백 불가능

--문제2
create table t_member_point
(
    id number(6),
    no number(6),
    member_id varchar2(24) not null,
    score number(3),
    check_date date default sysdate,
    CONSTRAINT pk_t_member_point PRIMARY KEY (id, no)
);

--문제3
create sequence t_member_point_pk_seq
increment by 1  
start with 1
maxvalue 999999
nocycle;

--문제4
INSERT INTO T_MEMBER_POINT values 
            (T_MEMBER_POINT_PK_SEQ.NEXTVAL
            ,(select count(*)+1 from t_member_point where member_id = 'A'), 
            'A',30,SYSDATE);
            
INSERT INTO T_MEMBER_POINT values 
            (T_MEMBER_POINT_PK_SEQ.NEXTVAL
            ,(select count(*)+1 from t_member_point where member_id = 'A'), 
            'B',40,SYSDATE);



SELECT * FROM USER_SEQUENCES;
SELECT * FROM T_MEMBER_POINT;