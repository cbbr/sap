-- how delta works in this case
-- delete all content in table;
DELETE FROM "CBASTO"."ta.tb.sample1";

-- insert new values to get how index behaves
INSERT INTO "CBASTO"."ta.tb.sample1" VALUES (1, 'Carlos likes to work with text analysis and text mining.');
INSERT INTO "CBASTO"."ta.tb.sample1" VALUES (2, 'Carlos enjoys skateboarding.

Carlos also likes beer.');