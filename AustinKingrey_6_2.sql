 /*
Austin Kingrey
Handson 6-2
*/

create or replace
FUNCTION tot_purch_sf
        (p_shopper_id IN number)
    RETURN NUMBER
    IS
        lv_total NUMBER(5,2);
BEGIN
    SELECT sum(total)
    INTO lv_total
    FROM bb_basket
    WHERE idshopper = p_shopper_id AND orderplaced = 1;
    
    RETURN lv_total;
END;
/

SELECT idShopper, tot_purch_sf(idshopper) total
FROM bb_shopper
GROUP BY idShopper;