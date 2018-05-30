/*
Austin Kingrey
Handson 5-3
*/

create or replace
PROCEDURE TAX_COST_SP
    (p_state IN CHAR,
    p_subtotal IN NUMBER,
    p_tax OUT NUMBER)
AS
BEGIN
    IF UPPER(p_state) = 'VA' THEN
        p_tax := .045 * p_subtotal;
    ELSIF UPPER(p_state) = 'NC' THEN
        p_tax := .03 * p_subtotal;
    ELSIF UPPER(p_state) = 'SC' THEN
        p_tax := .06 * p_subtotal;
    ELSE
        p_tax := 0;
    END IF;

END TAX_COST_SP;
/



DECLARE
    lv_ex_state CHAR(2) := 'VA';
    lv_ex_subtotal NUMBER(5) := 100;
    lv_ex_taxAmount NUMBER(5,2);
BEGIN
    TAX_COST_SP(lv_ex_state, lv_ex_subtotal, lv_ex_taxAmount);
    DBMS_OUTPUT.PUT_LINE(TO_CHAR(lv_ex_taxAmount,'$999.99'));
END;