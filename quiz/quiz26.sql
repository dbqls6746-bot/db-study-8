CREATE TABLE TABLE_DATA_1
(
no number(10),
create_date DATE
);

CREATE TABLE TABLE_DATA_2
(
no number(10),
create_date DATE
);

CREATE TABLE TABLE_COLC
(
std_date DATE,
CHECK_DATA1 VARCHAR2(6),
CHECK_DATA2 VARCHAR2(6)
);

INSERT INTO TABLE_DATA_1 VALUES (1, '2023-04-01');
INSERT INTO TABLE_DATA_1 VALUES (2, '2023-04-02');
INSERT INTO TABLE_DATA_1 VALUES (3, '2023-04-03');
INSERT INTO TABLE_DATA_1 VALUES (4, '2023-04-04');

INSERT INTO TABLE_DATA_2 VALUES (1, '2023-04-02');
INSERT INTO TABLE_DATA_2 VALUES (2, '2023-04-03');
INSERT INTO TABLE_DATA_2 VALUES (3, '2023-04-04');
INSERT INTO TABLE_DATA_2 VALUES (4, '2023-04-05');

merge into TABLE_COLC c
using TABLE_DATA_1 d1
on (c.std_date = d1.create_date)
WHEN MATCHED THEN
    UPDATE SET c.check_data1 ='Y'
WHEN NOT MATCHED THEN
    insert values (d1.create_date, 'Y','N');

merge into TABLE_COLC c
using TABLE_DATA_2 d2
on (c.std_date = d2.create_date)
WHEN MATCHED THEN
    UPDATE SET c.check_data2 ='Y'
WHEN NOT MATCHED THEN
    insert (std_date, check_data1, check_data2)
    values (d2.create_date, 'N','Y');
    
select * from table_colc
order by std_date;