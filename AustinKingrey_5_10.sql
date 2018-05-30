 /*
Austin Kingrey
Handson 5-10
*/

create or replace
PROCEDURE DDPROJ_SP
    (p_id IN NUMBER)
AS
    TYPE type_ex IS RECORD(
        id dd_project.idproj%TYPE,
        name dd_project.projname%TYPE,
        projstart dd_project.projstartdate%TYPE,
        projend dd_project.projenddate%TYPE,
        goal dd_project.projfundgoal%TYPE,
        coord dd_project.projcoord%TYPE);
    rec_proj type_ex;
BEGIN
    SELECT idproj, projname, projstartdate, projenddate, projfundgoal, projcoord
    INTO rec_proj
    FROM dd_project p
    WHERE p.idproj = p_id;
    DBMS_OUTPUT.PUT_LINE(rec_proj.id || ' * ' || rec_proj.name || ' * ' || rec_proj.projstart || ' * '
                        || rec_proj.projend || ' * ' || rec_proj.goal || ' * ' || rec_proj.coord);
END DDPROJ_SP;
/



DECLARE
    lv_id NUMBER(4,0) := 500;
BEGIN
    DDPROJ_SP(lv_id);
END;