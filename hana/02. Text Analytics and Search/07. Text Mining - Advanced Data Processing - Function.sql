-- Advanced Data Processing: TM_GET_RELATED_DOCUMENTS
-- This text mining function returns the top-ranked related 
-- documents for a query document within a search request 
-- and stores these documents (including metadata) in the 
-- return table.

SELECT T.FEDERAL_AWARD_ID_NUMBER, T.AWARD_TITLE, T.AWARD_ABSTRACT, T.TOTAL_TERM_COUNT, T.SCORE
FROM TM_GET_RELATED_DOCUMENTS (
DOCUMENT IN FULLTEXT INDEX WHERE FEDERAL_AWARD_ID_NUMBER = 1332740
SEARCH "AWARD_ABSTRACT" FROM "CBASTO"."tm.tb.awards"
RETURN
TOP 10
FEDERAL_AWARD_ID_NUMBER, AWARD_TITLE, AWARD_ABSTRACT
) AS T;