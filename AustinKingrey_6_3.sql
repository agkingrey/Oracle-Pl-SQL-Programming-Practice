/*
Austin Kingrey
Handson 6-3
*/

create or replace
FUNCTION num_purch_sf
        (p_shopper_id IN NUMBER)
    RETURN NUMBER
    IS
        lv_total_purch NUMBER(5,2);
BEGIN
    SELECT count(orderplaced)
    INTO lv_total_purch
    FROM bb_basket
    WHERE idshopper = p_shopper_id AND orderplaced = 1;
    
    RETURN lv_total_purch;
END;
/

SELECT idshopper, num_purch_sf(23) ordersplaced
FROM bb_shopper
WHERE idshopper = 23;
