-- To use any PAL functions, you must do the following:

-- // Generate a procedure that wraps the generic PAL function with your specific data structures
-- // Call that wrap procedure, for example, from an SQLScript procedure

 --Prepare Table Types
 DROP TYPE "CBASTO"."pa.tt.abcDataView";
 CREATE TYPE "CBASTO"."pa.tt.abcDataView" AS TABLE ("SOMEOBJECT" NVARCHAR(80), "SOMEAMOUNT" DOUBLE);  
 DROP TYPE "CBASTO"."pa.tt.control";
 CREATE TYPE "CBASTO"."pa.tt.control" AS TABLE("Name" VARCHAR(100), "intArgs" INT, "doubleArgs" DOUBLE, "strArgs" VARCHAR(100));  
 DROP TYPE "CBASTO"."pa.tt.abcResult";
 CREATE TYPE "CBASTO"."pa.tt.abcResult" AS TABLE("ABC" NVARCHAR(10), "SOMEOBJECT" NVARCHAR(80));

 --Create the proc using the wrapper
 --Define and populate parameters table
 DROP TABLE "CBASTO"."pa.tb.abcDataTBL";
 CREATE COLUMN TABLE "CBASTO"."pa.tb.abcDataTBL"
 (
   "POSITION" INT,
   "SCHEMA_NAME" NVARCHAR(256),
   "TYPE_NAME" NVARCHAR(256),
   "PARAMETER_TYPE" VARCHAR(7)
 );
 INSERT INTO "CBASTO"."pa.tb.abcDataTBL" VALUES (1,'CBASTO','pa.tt.abcDataView', 'in');  
 INSERT INTO "CBASTO"."pa.tb.abcDataTBL" VALUES (2,'CBASTO','pa.tt.control', 'in');  
 INSERT INTO "CBASTO"."pa.tb.abcDataTBL" VALUES (3,'CBASTO','pa.tt.abcResult','out');

 --Call the wrapper procedure to generate our ABC calculation procedure
 CALL SYS.AFLLANG_WRAPPER_PROCEDURE_DROP('CBASTO', 'pa.f.abcCalculate');
 CALL SYS.AFLLANG_WRAPPER_PROCEDURE_CREATE ('AFLPAL', 'ABC', 'CBASTO', 'pa.f.abcCalculate', "CBASTO"."pa.tb.abcDataTBL");
