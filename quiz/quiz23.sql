CREATE TABLE temp_professor
AS
SELECT * FROM professor;

update temp_professor
set bonus = 200
-- select * from temp_professor
where position = 'assistant professor';

update temp_professor
set pay = pay * 1.15
-- select * from temp_professor
where position = (select position
                from temp_professor
                where name = 'Sharon Stone')
and pay < 250;
