select
    to_char(to_date(pe.p_date, 'YYYYMMDD'), 'YYYY-MM-DD') AS "판매일자"
    ,pe.p_code  AS "상품코드"
    ,pt.p_name AS "상품명"
    ,to_char(pt.p_price , '999,999') AS "상품가"
    ,pe.p_qty AS "구매수량"
    ,to_char(pe.p_total , '999,999') AS "총금액"
    ,to_char(pe.p_total * 100 , '999,999')  AS "적립포인트"
    ,DECODE(substr(pe.p_date,5,4),'0101',to_char(pe.p_total * 200 , '999,999,999'),to_char(pe.p_total * 100 , '999,999')) AS "새해2배적립포인트"
    ,g.gname AS "사은품명"
    ,to_char(g.g_start , '999,999') AS "포인트START"
    ,to_char(g.g_end , '999,999') AS "포인트END"
from panmae pe left outer join product pt
on pe.p_code = pt.p_code
left outer join gift g
on DECODE(substr(pe.p_date,5,4),'0101',pe.p_total * 200, pe.p_total * 100) BETWEEN g.g_start AND g.g_end
where DECODE(substr(pe.p_date,5,4),'0101',pe.p_total * 200, pe.p_total * 100) <= 1000000
order by 판매일자,사은품명;

select *
from panmae, product, gift ;

desc panmae;