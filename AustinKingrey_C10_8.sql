/*
Austin Kingrey
Hands on 10-8
*/

CREATE or replaCE PROCEDURE dyn_addcol_sp
   (p_col IN VARCHAR2,
    p_table IN VARCHAR2,
    p_type IN VARCHAR2)
 IS
BEGIN
 EXECUTE IMMEDIATE 'ALTER TABLE '|| p_table || ' ADD ' || p_col || ' ' || p_type;
END;
/

BEGIN 
dyn_addcol_sp('member','bb_shopper','CHAR(1)');
END;
/
DESC bb_shopper;