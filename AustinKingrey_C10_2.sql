/*
Austin Kingrey
Hands on 10-2
*/

DECLARE
    CURSOR cur_objects IS
    SELECT object_name, status, object_type
    FROM all_objects
    WHERE status = 'INVALID';
    lv_checking cur_objects%ROWTYPE;
BEGIN
    OPEN cur_objects;
    LOOP
        FETCH cur_objects INTO lv_checking;
        EXIT WHEN cur_objects%NOTFOUND;
        DBMS_DDL.ALTER_COMPILE(lv_checking.object_type,NULL,lv_checking.object_name);
    END LOOP;
    CLOSE cur_objects;
END;



