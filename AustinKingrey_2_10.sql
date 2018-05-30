/*
Austin Kingrey
Hands on 2-10
*/
DECLARE
    lv_starting_date DATE := '31-JAN-17';
    lv_monthly_amount NUMBER(10,2) := 50.20;
    lv_number_of_months NUMBER(2) := 11;
    lv_total_pledge NUMBER(10,2);
    lv_payment_counter NUMBER(2) := 1;
BEGIN 
    --Here I am calculating total pledge amount, then printing the total--
    lv_total_pledge := lv_monthly_amount * lv_number_of_months;
    DBMS_OUTPUT.PUT_LINE('Total pledge amount: ' || TO_CHAR(lv_total_pledge,'$9999.99'));
    
    LOOP
        --subtract one from number of months, using as a counter variable.--
        lv_number_of_months := lv_number_of_months - 1;
        
        --subtracting monthly payments from total amount--
        lv_total_pledge := lv_total_pledge - lv_monthly_amount;
        
        --print line statement--
         DBMS_OUTPUT.PUT_LINE('Payment #' || lv_payment_counter || ' Date: ' || TO_CHAR(lv_starting_date,'MON DD, YYYY') || '  Amt:' || 
            TO_CHAR(lv_monthly_amount, '$9999.99') || ' Bal: ' ||  TO_CHAR(lv_total_pledge,'$9999.99') );
        EXIT WHEN lv_number_of_months = 0;
        --payment number counter--
        lv_payment_counter := lv_payment_counter + 1;
        
        --add a month for the next iteration of the loop--     
        lv_starting_date := ADD_MONTHS(lv_starting_date,1);    
    END LOOP;
END;