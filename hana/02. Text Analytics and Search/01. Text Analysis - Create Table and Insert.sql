
-- drop table if it already exists
DROP TABLE "CBASTO"."ta.tb.sample1";

-- create table to insert records for further text analysis
CREATE COLUMN TABLE "CBASTO"."ta.tb.sample1"
(
ID INTEGER PRIMARY KEY, 
STRING nvarchar(200)
)
;

-- Because of the default settings in environment, insert an record in english
INSERT INTO "CBASTO"."ta.tb.sample1" VALUES (1, 'Carlos Basto likes very much to work with text analysis');
