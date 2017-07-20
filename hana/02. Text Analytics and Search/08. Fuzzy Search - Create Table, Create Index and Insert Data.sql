-- ///////////////// Fuzzy_Search_Examples.txt ////////////////
-- drop table if it already exists
DROP TABLE "CBASTO"."ft.t.fuzzySearchText" ;

-- create table for fuzzy analysis
CREATE COLUMN TABLE "CBASTO"."ft.t.fuzzySearchText" 
(
id INTEGER PRIMARY KEY, 
datacolumn1 SHORTTEXT(500), 
datacolumn2 SHORTTEXT(500), 
datacolumn3 SHORTTEXT(500) 
FUZZY SEARCH INDEX ON
)
;

-- insert records into table for fuzzy analysis
INSERT INTO "CBASTO"."ft.t.fuzzySearchText" VALUES (1, '','BusinessObjects','');
INSERT INTO "CBASTO"."ft.t.fuzzySearchText" VALUES (2, 'SAP Corp','','');
INSERT INTO "CBASTO"."ft.t.fuzzySearchText" VALUES (3, '','SAP in Walldorf Corp','');
INSERT INTO "CBASTO"."ft.t.fuzzySearchText" VALUES (4, '','','SAP HANA');
INSERT INTO "CBASTO"."ft.t.fuzzySearchText" VALUES (5, '','ASAP','');
INSERT INTO "CBASTO"."ft.t.fuzzySearchText" VALUES (6, 'sap hana','','');
INSERT INTO "CBASTO"."ft.t.fuzzySearchText" VALUES (7, '','','saphana');
INSERT INTO "CBASTO"."ft.t.fuzzySearchText" VALUES (8, 'sap','','hana');
INSERT INTO "CBASTO"."ft.t.fuzzySearchText" VALUES (9, 'sap loves hana','','');
INSERT INTO "CBASTO"."ft.t.fuzzySearchText" VALUES (10, 'sap loves sap hana','','');



-- Analysis of results:
select *
from "CBASTO"."ft.t.fuzzySearchText" 
where contains (*,'SAP HANA');

select *
from "CBASTO"."ft.t.fuzzySearchText" 
where contains (*,'SAP HANA',EXACT);

select *
from "CBASTO"."ft.t.fuzzySearchText" 
where contains (*,'"SAP HANA"');

select *
from "CBASTO"."ft.t.fuzzySearchText" 
where contains (*,'%SAP');

