 /*
Austin Kingrey
Handson 5-9
*/

create or replace
PROCEDURE MEMBER_CK_SP
    (p_userName IN VARCHAR2,
    p_password_name IN OUT VARCHAR2,
    p_check OUT CHAR,
    p_cookie OUT NUMBER)
AS
BEGIN
    SELECT COUNT(*)
    INTO p_check
    FROM bb_shopper s
    WHERE s.username = p_userName;
    
    IF p_check > 0 THEN
        SELECT (firstname || ' ' || lastname), cookie
        INTO p_password_name, p_cookie
        FROM bb_shopper s
        WHERE s.username = p_userName;
        DBMS_OUTPUT.PUT_LINE(p_password_name || ' ' || p_cookie);
    ELSIF p_check = 0 THEN
        p_check := 'INVALID';
        DBMS_OUTPUT.PUT_LINE(p_check);
    END IF;
END MEMBER_CK_SP;
/




DECLARE
    lv_userName VARCHAR2(8 BYTE) := 'rat55';
    lv_password VARCHAR2(20 BYTE) := 'kile';
    lv_output CHAR(8 BYTE);
    lv_cookie NUMBER(4,0);
BEGIN
    MEMBER_CK_SP(lv_userName, lv_password, lv_output, lv_cookie);
END;