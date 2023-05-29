# INNER JOIN is used fetch records having matching columns

## Syntax

## SELECT \* from table_one as one INNER JOIN table_two two ON one.column_name=two.column_name;

## SELECT spid, sa.geoid,ge.geo, pid, saledate, amount, customers, boxes FROM sales sa INNER JOIN GEO ge ON sa.geoid=ge.geoid;
