/*
Austin Kingrey
Handson 6-6
*/

create or replace
FUNCTION status_desc_sf
        (p_stage_id IN NUMBER)
    RETURN VARCHAR2
    IS
        lv_description VARCHAR2(50);
BEGIN
    IF p_stage_id = 1 THEN
        lv_description := 'Order Submitted';
        ELSIF p_stage_id = 2 THEN
            lv_description := 'Accepted, sent to shipping';
        ELSIF p_stage_id = 3 THEN
            lv_description := 'Back-ordered';
        ELSIF p_stage_id = 4 THEN
            lv_description := 'Cancelled';
        ELSIF p_stage_id = 5 THEN
            lv_description := 'Shipped';
        ELSE 
            lv_description := 'Unsure';
    END IF;
    
    RETURN lv_description;   
END;
/

SELECT bb_basketstatus.*, status_desc_sf(idstage) description
FROM bb_basketstatus
WHERE idbasket = 4;