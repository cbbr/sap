--Prepare and execute the procedure with ABC Analysis
--Prepare parameters table
DROP TABLE "CBASTO"."pa.tb.abcControlTBL";
CREATE COLUMN TABLE "CBASTO"."pa.tb.abcControlTBL"
(
    "Name" NVARCHAR(100) NOT NULL,
    "intArgs" INTEGER,
    "doubleArgs" DECIMAL(15, 2),
    "strArgs" NVARCHAR(100),
    PRIMARY KEY ("Name")
);

TRUNCATE TABLE "CBASTO"."pa.tb.abcControlTBL";
INSERT INTO "CBASTO"."pa.tb.abcControlTBL"
SELECT 'THREAD_NUMBER',5,null,null from DUMMY UNION ALL
SELECT 'PERCENT_A',null,0.70,null from DUMMY UNION ALL
SELECT 'PERCENT_B',null,0.20,null from DUMMY UNION ALL
SELECT 'PERCENT_C',null,0.10,null from DUMMY;

--Execute the procedure
DROP TABLE "CBASTO"."pa.tb.abcResultTBL";
CREATE COLUMN TABLE "CBASTO"."pa.tb.abcResultTBL"
(
    "ABC" NVARCHAR(10) NOT NULL,
    "SOMEOBJECT" NVARCHAR(100) NOT NULL,
    PRIMARY KEY ("ABC", "SOMEOBJECT")
);
TRUNCATE TABLE "CBASTO"."pa.tb.abcResultTBL";

CALL "CBASTO"."pa.f.abcCalculate"
(
    "CBASTO"."pa.v.abcInput",
    "CBASTO"."pa.tb.abcControlTBL",
    "CBASTO"."pa.tb.abcResultTBL"
) WITH OVERVIEW;