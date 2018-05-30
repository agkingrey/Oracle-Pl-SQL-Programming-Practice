/*
Austin Kingrey
Handson 3-13
*/
DECLARE
    lv_new_amount_setter NUMBER(9,2) := 50000;
    lv_proj_id NUMBER(3) := 501;
    lv_proj_name dd_project.projname%TYPE;
    lv_start_date dd_project.projstartdate%TYPE;
    lv_end_date dd_project.projenddate%TYPE;
    lv_new_amount dd_project.projfundgoal%TYPE;
BEGIN
    
    UPDATE dd_project
    SET projfundgoal = lv_new_amount_setter
    WHERE idproj = lv_proj_id;
    COMMIT;
    
    SELECT projname, projstartdate, projenddate, projfundgoal
    INTO lv_proj_name, lv_start_date, lv_end_date, lv_new_amount
    FROM dd_project
    WHERE idproj = lv_proj_id;
    
    DBMS_OUTPUT.PUT_LINE(lv_proj_name || ' * ' || lv_start_date || ' * ' || lv_end_date || ' * ' ||
                        lv_new_amount);
END;

