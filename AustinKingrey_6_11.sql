/*
Austin Kingrey
Handson 6-11
*/

create or replace
FUNCTION dd_plstat_sf
        (p_id IN NUMBER)
    RETURN VARCHAR2
    IS
        lv_desc VARCHAR2(25);
BEGIN
    SELECT statusdesc
    INTO lv_desc
    FROM dd_status
    WHERE idstatus = p_id;
    
    RETURN lv_desc;      
END;
/

SELECT idpledge, pledgedate, idstatus, dd_plstat_sf(idstatus) "STATUS DESCRIPTION"
FROM dd_pledge;

SELECT idpledge, pledgedate, idstatus, dd_plstat_sf(idstatus) "STATUS DESCRIPTION"
FROM dd_pledge
WHERE idpledge = &userinput;