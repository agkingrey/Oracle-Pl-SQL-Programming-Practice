/*
AUstin Kingrey
Handson 7-8
*/
CREATE OR REPLACE PACKAGE login_pkg 
 IS
 pv_logon DATE;
 pv_id_num NUMBER(3);
 FUNCTION login_ck_pf 
  (p_user IN VARCHAR2,
   p_pass IN VARCHAR2)
   RETURN CHAR;
END;
/
CREATE OR REPLACE PACKAGE BODY login_pkg IS
 FUNCTION login_ck_pf 
  (p_user IN VARCHAR2,
   p_pass IN VARCHAR2)
   RETURN CHAR
  IS
   lv_ck_txt CHAR(1) := 'N';
   lv_id_num NUMBER(5);
 BEGIN
   SELECT idShopper
    INTO lv_id_num
    FROM bb_shopper
    WHERE username = p_user
     AND password = p_pass;
      lv_ck_txt := 'Y';
      pv_id_num := lv_id_num;
   RETURN lv_ck_txt;
 EXCEPTION
  WHEN NO_DATA_FOUND THEN
   RETURN lv_ck_txt;
 END;
 BEGIN
 pv_logon := SYSDATE;
END;
/



DECLARE
    lv_user VARCHAR2(20 byte) := 'Test';
    lv_pass VARCHAR2(20 byte) := 'TestP';
BEGIN
    DBMS_OUTPUT.PUT_LINE(login_pkg.login_ck_pf(lv_user, lv_pass));
    DBMS_OUTPUT.PUT_LINE(TO_CHAR(login_pkg.pv_logon,'yyyy/mm/dd hh:mi:ssam'));
END;