# FULL OUTER JOIN is used fetch all records when there is matching in table_one(left) or table_two(right).

## Syntax

## SELECT \* from table_one as one FULL OUTER JOIN table_two two ON one.column_name=two.column_name;

## SELECT prds.pid, product, category, size, cost_per_box FROM products prds FULL OUTER JOIN sales sls ON prds.pid=sls.pid;
