/*
AUstin Kingrey
Handson 9-2
*/
CREATE OR REPLACE TRIGGER BB_REQFILL_TRG
    AFTER UPDATE OF DTRECD ON bb_product_request
    FOR EACH ROW
    WHEN(OLD.dtrecd IS NULL AND NEW.dtrecd IS NOT NULL)
DECLARE
    lvIdProduct NUMBER(2,0);
    lvQuantity NUMBER(3,0) := :NEW.qty;
BEGIN
    SELECT idproduct
    INTO lvIdProduct
    FROM bb_product
    WHERE idproduct = :NEW.idproduct;
    UPDATE bb_product
        SET stock = lvQuantity
        WHERE idProduct = lvIdProduct;
END;
/
