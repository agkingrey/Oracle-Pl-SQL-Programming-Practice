/*
Austin Kingrey
Handson 3-10
*/

--Creating my sequence--
 CREATE SEQUENCE dd_projid_seq
    START WITH 530
    INCREMENT BY 1
    NOCACHE;
    
DECLARE
  ex_project dd_project%ROWTYPE;  
BEGIN
    ex_project.idproj := dd_projid_seq.NEXTVAL;
    ex_project.projname := 'HK Animal Shelter Extension';
    ex_project.projstartdate := '01-JAN-13';
    ex_project.projenddate := '31-MAY-13';
    ex_project.projfundgoal := 65000;
    INSERT INTO dd_project
        VALUES ex_project;
END;
