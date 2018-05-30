/*
Austin Kingrey
Handson 3-8
*/
DECLARE
    TYPE type_basket IS RECORD(
        vBasket bb_basket.idBasket%TYPE,
        vSubtotal bb_basket.subtotal%TYPE,
        vShipping bb_basket.shipping%TYPE,
        vTax bb_basket.tax%TYPE,
        vTotal bb_basket.total%TYPE);
    ex_basket type_basket;
    lv_tester_var NUMBER(2) := 12;
BEGIN
    SELECT idbasket, subtotal, shipping, tax, total
    INTO ex_basket
    FROM bb_basket
    WHERE idbasket = lv_tester_var;
    
    DBMS_OUTPUT.PUT_LINE(ex_basket.vBasket || ' * ' || ex_basket.vSubtotal || ' * ' || ex_basket.vShipping ||
                        ' * ' || ex_basket.vTax || ' * ' || ex_basket.vTotal);
END;