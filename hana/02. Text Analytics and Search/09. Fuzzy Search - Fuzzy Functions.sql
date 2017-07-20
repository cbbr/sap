-- Drop table and everything depends on it if exists
DROP TABLE "CBASTO"."ft.t.fuzzySearchTextContent" CASCADE; 

-- Create table and determining fuzzy context of content
CREATE COLUMN TABLE "CBASTO"."ft.t.fuzzySearchTextContent" (content text);

-- insert some records to analyse
INSERT INTO "CBASTO"."ft.t.fuzzySearchTextContent" VALUES('Manchester');
INSERT INTO "CBASTO"."ft.t.fuzzySearchTextContent" VALUES('Manchestar');
INSERT INTO "CBASTO"."ft.t.fuzzySearchTextContent" VALUES('Menchester');
INSERT INTO "CBASTO"."ft.t.fuzzySearchTextContent" VALUES('Menchestare');


-- understanding score() function
SELECT SCORE(), CONTENT FROM "CBASTO"."ft.t.fuzzySearchTextContent" WHERE CONTAINS(CONTENT, 'Manchester');
SELECT SCORE(), CONTENT FROM "CBASTO"."ft.t.fuzzySearchTextContent" WHERE CONTAINS(CONTENT, 'Manchester',Fuzzy(0.5)) order by 1 desc;
SELECT SCORE(), CONTENT FROM "CBASTO"."ft.t.fuzzySearchTextContent" WHERE CONTAINS(CONTENT, 'Manchester',Fuzzy(0.9)) order by 1 desc;

-- insert another record to analyse
INSERT INTO "CBASTO"."ft.t.fuzzySearchTextContent" VALUES('Manchester United');


SELECT * FROM "CBASTO"."ft.t.fuzzySearchTextContent";
SELECT SCORE(), CONTENT FROM "CBASTO"."ft.t.fuzzySearchTextContent" 
WHERE CONTAINS(CONTENT, 'Manchester',Fuzzy(0.1)) order by 1 desc;

INSERT INTO "CBASTO"."ft.t.fuzzySearchTextContent" VALUES('ManchesterUnited');
SELECT * FROM "CBASTO"."ft.t.fuzzySearchTextContent";

SELECT SCORE(), CONTENT FROM "CBASTO"."ft.t.fuzzySearchTextContent" 
WHERE CONTAINS(CONTENT, 'Manchester',Fuzzy(0.9)) 
ORDER BY 1 DESC;