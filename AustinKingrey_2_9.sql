/*
Austin Kingrey
Hands on 2-9
*/
DECLARE
    lv_starting_date DATE := '31-JAN-17';
    lv_monthly_amount NUMBER(10,2) := 50.20;
    lv_number_of_months NUMBER(2) := 11;
    lv_total_pledge NUMBER(10,2);
BEGIN
    --Here I am calculating total pledge amount, then printing the total--
    lv_total_pledge := lv_monthly_amount * lv_number_of_months;
    DBMS_OUTPUT.PUT_LINE('Total pledge amount: ' || TO_CHAR(lv_total_pledge,'$9999.99'));
    
    --for loop iterating through each month, subtracting the monthly amount from the total, and printing out various info--
    FOR i IN 1..lv_number_of_months LOOP
        --subtracting monthly payments from total amount--
        lv_total_pledge := lv_total_pledge - lv_monthly_amount;
        
        DBMS_OUTPUT.PUT_LINE('Payment #' || i || ' Date: ' || TO_CHAR(lv_starting_date,'MON DD, YYYY') || '  Amt:' || 
            TO_CHAR(lv_monthly_amount, '$9999.99') || ' Bal: ' ||  TO_CHAR(lv_total_pledge,'$9999.99') );
       
       --add a month for the next iteration of the loop--     
        lv_starting_date := ADD_MONTHS(lv_starting_date,1);
    END LOOP;
    
END;