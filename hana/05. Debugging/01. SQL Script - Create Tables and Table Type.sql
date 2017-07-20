---- Create Product table

DROP TABLE "CBASTO"."sql.tb.product";

create column table "CBASTO"."sql.tb.product"(
      "PRODUCT_ID" VARCHAR(10),
      "PRODUCT_NAME" VARCHAR (100),
    "CATEGORY" VARCHAR(100),
      primary key ("PRODUCT_ID")
);

insert into "CBASTO"."sql.tb.product" values('P1','Shirts', 'Clothes');
insert into "CBASTO"."sql.tb.product" values('P2','Jackets', 'Clothes');
insert into "CBASTO"."sql.tb.product" values('P3','Trousers', 'Clothes');
insert into "CBASTO"."sql.tb.product" values('P4','Coats', 'Clothes');
insert into "CBASTO"."sql.tb.product" values('P5','Purse', 'Accessories');


DROP TABLE "CBASTO"."sql.tb.sales";
-- Create Sales table
create column table "CBASTO"."sql.tb.sales"(
      "PRODUCT_ID" VARCHAR(10),
      "SALES_AMOUNT" DOUBLE,      
      PRIMARY KEY ("PRODUCT_ID", "SALES_AMOUNT") );

insert into "CBASTO"."sql.tb.sales" values('P1',100);
insert into "CBASTO"."sql.tb.sales" values('P2',90);
insert into "CBASTO"."sql.tb.sales" values('P5',85);
insert into "CBASTO"."sql.tb.sales" values('P2',80);
insert into "CBASTO"."sql.tb.sales" values('P1',75);
insert into "CBASTO"."sql.tb.sales" values('P3',85);
insert into "CBASTO"."sql.tb.sales" values('P4',75);
insert into "CBASTO"."sql.tb.sales" values('P1',65);
insert into "CBASTO"."sql.tb.sales" values('P2',65);


DROP TYPE "CBASTO"."sql.tt.sales";
--Create table type
CREATE TYPE "CBASTO"."sql.tt.sales" AS TABLE(
"PRODUCT_NAME" VARCHAR (100),
"SALES_AMOUNT" DOUBLE
);
