/*
Austin Kingrey
Handson 3-9
I used the condition of 500 for idproj, because the assingment doesn't specifically say
*/
DECLARE
    lv_project_id NUMBER(3);
    lv_project_name VARCHAR2(60);
    lv_number_of_pledges NUMBER(2);
    lv_total_pledge_amount NUMBER(8,2);
    lf_average_pledge NUMBER (8,2);
BEGIN
    SELECT r.idproj, r.projname, COUNT(l.idproj), SUM(l.pledgeamt), AVG(l.pledgeamt) 
    INTO lv_project_id, lv_project_name, lv_number_of_pledges, lv_total_pledge_amount, lf_average_pledge
    FROM dd_project r INNER JOIN dd_pledge l ON r.idproj = l.idproj
    WHERE r.idproj = 500
    GROUP BY r.idproj, r.projname;
    
    DBMS_OUTPUT.PUT_LINE(lv_project_id || ' * ' || lv_project_name || ' * ' || lv_number_of_pledges ||
                        ' * ' || lv_total_pledge_amount || ' * ' || lf_average_pledge);
END;

