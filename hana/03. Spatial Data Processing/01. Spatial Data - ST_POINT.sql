-- ST_POINT: The ST_Point() function returns an single point, given an 
-- X-coordinate, Y-coordinate, and spatial reference ID.

DROP TABLE "CBASTO"."geo.tb.st_point";

CREATE COLUMN TABLE "CBASTO"."geo.tb.st_point" ( COORDINATE ST_POINT );

INSERT INTO "CBASTO"."geo.tb.st_point" VALUES (NEW ST_POINT (40.71, 74.0));

SELECT COORDINATE.ST_ASGEOJSON () FROM "CBASTO"."geo.tb.st_point";