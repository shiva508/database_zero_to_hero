# LIMIT clause is used to get only limited number rows from table instead of fetching everything

## Syntax

## SELECT \* FROM table_name ORDER BY column_name DESC LIMIT 8;

### (or)

## SELECT \* FROM table_name ORDER BY column_name_one,column_name_two DESC LIMIT 8;

## Sorting table data and getting fixed number of records using single column

### SELECT geoid,boxes, amount, customers FROM public.sales ORDER BY amount DESC LIMIT 10;
