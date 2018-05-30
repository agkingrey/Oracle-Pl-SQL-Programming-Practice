/*
Austin Kingrey
Handson 6-9
*/

create or replace
FUNCTION dd_mthpay_sf
        (p_number_of_payments IN NUMBER,
         p_pledge_amount IN NUMBER)
    RETURN NUMBER
    IS
BEGIN
    RETURN (p_pledge_amount/p_number_of_payments);
END;
/

BEGIN
    DBMS_OUTPUT.PUT_LINE(dd_mthpay_sf(12,240));
END;
/

SELECT dd_pledge.*, dd_mthpay_sf(paymonths,pledgeamt) "Per Month Payment"
FROM dd_pledge
WHERE paymonths != 0;
