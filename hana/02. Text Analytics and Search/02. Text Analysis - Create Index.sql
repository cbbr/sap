DROP FULLTEXT INDEX "CBASTO"."TAIDXFULLTEXT";

-- Creating fulltext index from "ta.tb.sample1" table

CREATE FULLTEXT INDEX taIdxFullText ON  "CBASTO"."ta.tb.sample1"("STRING")
CONFIGURATION 'EXTRACTION_CORE_VOICEOFCUSTOMER'

-- play text analysis on
TEXT ANALYSIS ON;
