/*
Austin Kingrey
Hands on 2-4
*/
--1--
DECLARE
    lv_purchases NUMBER(10,2) := 50;
    lv_customer_rating CHAR(4);
BEGIN
    CASE 
        WHEN lv_purchases > 200 THEN
            lv_customer_rating := 'HIGH';
        WHEN lv_purchases > 100 THEN
            lv_customer_rating := 'MID';
        WHEN lv_purchases <= 100 THEN
            lv_customer_rating := 'LOW';
    END CASE;
    DBMS_OUTPUT.PUT_LINE(lv_customer_rating);
END;
/
--2--
DECLARE
    lv_purchases NUMBER(10,2) := 150;
    lv_customer_rating CHAR(4);
BEGIN
    CASE 
        WHEN lv_purchases > 200 THEN
            lv_customer_rating := 'HIGH';
        WHEN lv_purchases > 100 THEN
            lv_customer_rating := 'MID';
        WHEN lv_purchases <= 100 THEN
            lv_customer_rating := 'LOW';
    END CASE;
    DBMS_OUTPUT.PUT_LINE(lv_customer_rating);
END;
/
--3--
DECLARE
    lv_purchases NUMBER(10,2) := 250;
    lv_customer_rating CHAR(4);
BEGIN
    CASE 
        WHEN lv_purchases > 200 THEN
            lv_customer_rating := 'HIGH';
        WHEN lv_purchases > 100 THEN
            lv_customer_rating := 'MID';
        WHEN lv_purchases <= 100 THEN
            lv_customer_rating := 'LOW';
    END CASE;
    DBMS_OUTPUT.PUT_LINE(lv_customer_rating);
END;