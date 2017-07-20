-- allowing you to create columns capable of storing spatial data 
-- such as the location of a landmark, a street, or a parcel of land. 
-- It provides International Organization for Standards (ISO) and 
-- Open Geospatial Consortium, Inc. (OGC) compliant structured query 
-- language (SQL) access to the geodatabase and database. This storage 
-- extends the capabilities of the database by providing storage for objects 
-- (points, lines, and polygons) that represent geographic features. 

DROP TABLE "CBASTO"."geo.tb.st_geometry";

CREATE COLUMN TABLE "CBASTO"."geo.tb.st_geometry" ( SHAPE ST_GEOMETRY );

INSERT INTO "CBASTO"."geo.tb.st_geometry" VALUES (NEW ST_POINT(0.0, 0.0) );
INSERT INTO "CBASTO"."geo.tb.st_geometry" VALUES (NEW ST_POLYGON('POLYGON((0.0 0.0, 4.0 0.0, 2.0 2.0, 0.0 0.0))') );

SELECT SHAPE.ST_ASGEOJSON() FROM "CBASTO"."geo.tb.st_geometry";