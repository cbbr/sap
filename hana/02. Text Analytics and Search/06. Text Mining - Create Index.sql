-- drop data mining index if exists
DROP FULLTEXT INDEX tmidxfulltext;

-- create data mining index
CREATE FULLTEXT INDEX tmidxfulltext
ON "CBASTO"."tm.tb.awards" (AWARD_ABSTRACT)
FAST PREPROCESS OFF
SEARCH ONLY OFF
TEXT ANALYSIS ON
TEXT MINING ON;

-- merge new records if huge data is loaded
-- MERGE DELTA OF "CBASTO"."tm.tb.awards";		
