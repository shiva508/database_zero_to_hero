# LEFT OUTER JOIN is used fetch all records unique to table_one(left) and not available in table_two(right).

## Syntax

## SELECT \* from table_one as one LEFT OUTER JOIN table_two two ON one.column_name=two.column_name;

## SELECT prds.pid, product, category, size, cost_per_box FROM products prds LEFT OUTER JOIN sales sls ON prds.pid=sls.pid;
