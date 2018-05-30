/*
AUstin Kingrey
Handson 9-8
*/
BEGIN
    INSERT INTO bb_prodchg_audit
        (user_id,
         chg_date,
         name_old,
         name_new,
         price_old,
         price_new,
         start_old,
         start_new,
         end_old,
         end_new,
         sale_old,
         sale_new)
    VALUES
        (USER,
         SYSDATE,
         :OLD.productName,
         :NEW.productName,
         :OLD.price,
         :NEW.price,
         :OLD.SALESTART,
         :NEW.Salestart,
         :OLD.saleend,
         :NEW.saleend,
         :OLD.saleprice,
         :NEW.saleprice);
END;