DROP VIEW "CBASTO"."pa.v.abcInput" ;

CREATE VIEW "CBASTO"."pa.v.abcInput" as (SELECT ACCOUNTNR as SOMEOBJECT, TOTAL_AMOUNT as SOMEAMOUNT from "CBASTO"."pa.tb.accountRevenue");

SELECT COUNT(*) FROM "CBASTO"."pa.v.abcInput";
--Should return 99 records