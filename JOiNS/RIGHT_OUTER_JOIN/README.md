# RIGHT OUTER JOIN is used fetch all records unique to table_two(right) and not available in table_one(left).

## Syntax

## SELECT \* from table_one as one RIGHT OUTER JOIN table_two two ON one.column_name=two.column_name;

## SELECT prds.pid, product, category, size, cost_per_box FROM products prds RIGHT OUTER JOIN sales sls ON prds.pid=sls.pid;
