/*
AUstin Kingrey
Handson 3-11
*/
/*
DECLARE 
    --create a record for my table of records coming up.--
    TYPE type_record IS RECORD(
        vIDPledge dd_pledge.idpledge%TYPE,
        vIDDonor dd_pledge.iddonor%TYPE,
        vpledgeAmt dd_pledge.pledgeamt%TYPE,
        vpayPlan VARCHAR2(13));
        
    TYPE type_table IS TABLE OF type_record%ROWTYPE
    INDEX BY BINARY_INTEGER;
    ex_table type_table;
BEGIN
    
END;
*/

SELECT idpledge, iddonor, pledgeamt
FROM dd_pledge;