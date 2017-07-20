DROP PROCEDURE "CBASTO"."sql.pr.salesReport";

CREATE PROCEDURE  "CBASTO"."sql.pr.salesReport"(
            OUT salesReport  "CBASTO"."sql.tt.sales" )
            LANGUAGE SQLSCRIPT 
            SQL SECURITY INVOKER 
            AS
/*********BEGIN PROCEDURE SCRIPT ************/
BEGIN

internalTable = 
            SELECT T1.PRODUCT_NAME, SUM(T2.SALES_AMOUNT) as SALES_AMOUNT
            FROM "CBASTO"."sql.tb.product" AS T1
            INNER JOIN "CBASTO"."sql.tb.sales" AS T2
            ON T1.PRODUCT_ID = T2.PRODUCT_ID
            GROUP BY T1.PRODUCT_NAME;
			
salesReport   = 
	SELECT * 
	FROM :internalTable;
END;

--  Test it.
CALL "CBASTO"."sql.pr.salesReport"(?)