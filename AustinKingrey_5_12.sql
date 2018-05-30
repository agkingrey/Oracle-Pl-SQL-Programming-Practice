/*
AUstin Kingrey
Handson 5-12
*/

create or replace
PROCEDURE DDCKPAY_SP
    (p_payment IN NUMBER,
    p_id IN NUMBER)
AS
    num_of_months NUMBER(2);
    total_pledge NUMBER(8,2);
    ex_wrong EXCEPTION;
    PRAGMA EXCEPTION_INIT(ex_wrong, -20050);
BEGIN
 --select is nested in this exception, to catch the no data error, if my select returns nothing--
 BEGIN
    SELECT paymonths, pledgeamt
    INTO num_of_months, total_pledge
    FROM dd_pledge p
    WHERE (p.idpledge = p_id AND p.paymonths !=0); 
    
    IF p_payment != (total_pledge/num_of_months) THEN
        RAISE ex_wrong;
    END IF;
 EXCEPTION
    WHEN NO_DATA_FOUND THEN
        DBMS_OUTPUT.PUT_LINE('No payment info');
    WHEN ex_wrong THEN
        DBMS_OUTPUT.PUT_LINE('Incorrect Payment Amount - planned payment =' || TO_CHAR((total_pledge/num_of_months),'$999.99'));
 END;
    
END DDCKPAY_SP;




DECLARE
    lv_id NUMBER(4,0) := 104;
    lv_payment NUMBER(8,2) := 50;
BEGIN
    DDCKPAY_SP(lv_payment, lv_id);
END;