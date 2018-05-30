/*
Austin Kingrey
Handson 3-7
*/
DECLARE
    lv_id_basket NUMBER(5);
    lv_subtotal NUMBER(7,2);
    lv_shipping NUMBER(5,2);
    lv_tax NUMBER(5,2);
    lv_total NUMBER(7,2);
    lv_tester_var NUMBER(2) := 12;
BEGIN
    SELECT idbasket, subtotal, shipping, tax, total
    INTO lv_id_basket, lv_subtotal, lv_shipping, lv_tax, lv_total
    FROM bb_basket
    WHERE idbasket = lv_tester_var;
    
    DBMS_OUTPUT.PUT_LINE(lv_id_basket || ' * ' || lv_subtotal || ' * ' || lv_shipping || ' * ' ||
                        lv_tax || ' * ' || lv_total);
END;
