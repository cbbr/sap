-- top only
SELECT "AWARD_TITLE", "AWARD_ABSTRACT", "PROGRAM"
FROM "CBASTO"."tm.tb.awards";

-- group by program desc
SELECT "PROGRAM", COUNT(*) as COUNT
FROM "CBASTO"."tm.tb.awards"
GROUP BY "PROGRAM"
ORDER BY COUNT(*) DESC;

-- Simple selection
SELECT "AWARD_TITLE", "AWARD_ABSTRACT", "PROGRAM"
FROM "CBASTO"."tm.tb.awards"
WHERE "FEDERAL_AWARD_ID_NUMBER" = 1332740;