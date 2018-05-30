/*
Austin Kingrey
Handson 6-4
*/

create or replace
FUNCTION day_ord_sf
        (p_order_date IN DATE)
    RETURN VARCHAR2
    IS
        lv_day_of_week VARCHAR2(9);
BEGIN
    SELECT TO_CHAR((p_order_date) , 'DAY')
    INTO lv_day_of_week
    FROM dual;
    
    RETURN lv_day_of_week;
END;
/

SELECT idbasket, day_ord_sf(dtcreated) dayofcreation
FROM bb_basket;

SELECT day_ord_sf(dtcreated) dayofweek, count(*) NumberOfEachDay
FROM bb_basket
GROUP BY day_ord_sf(dtcreated)
ORDER BY count(*) DESC;