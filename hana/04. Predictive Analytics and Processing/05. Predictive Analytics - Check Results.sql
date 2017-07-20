-- Check the results. Firstly, check what group 
-- each account has been assigned to.

SELECT
  "ABC" AS ABC,
  T."SOMEOBJECT" AS COMPANY,
  "SOMEAMOUNT" AS GROSS_AMOUNT
FROM
  "CBASTO"."pa.v.abcInput"  AS T
    INNER JOIN "CBASTO"."pa.tb.abcResultTBL" AS R
    ON T."SOMEOBJECT" = R."SOMEOBJECT"
ORDER BY 1, 3 desc;


-- using SAP HANA SQL window functions, you can compute the 
-- percentages of the total revenue falling into each group 
-- and compare to the desired 70-20-10 distribution.

SELECT
  "ABC" AS ABC,
  count(*) AS NR_OF_ACCOUNTS,
  sum("SOMEAMOUNT") AS GROSS_AMOUNT,
  round(sum("SOMEAMOUNT") / (sum(sum("SOMEAMOUNT") ) over ()),2) AS PT_SHARE
FROM
  "CBASTO"."pa.v.abcInput" AS T
    INNER JOIN "CBASTO"."pa.tb.abcResultTBL" AS R
    ON T."SOMEOBJECT" = R."SOMEOBJECT"
GROUP BY "ABC"
ORDER BY 1;  