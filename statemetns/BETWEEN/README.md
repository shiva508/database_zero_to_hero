# BETWEEN clause is used to get the details from database table from one rnage to other range

## Syntax

## SELECT \* FROM table_name ORDER BY column_name BETWEEN rangeOne AND rangeTwo;

## Get the records between 2 ranges

### SELECT spid, geoid, pid, saledate, amount, customers, boxes FROM public.sales WHERE amount BETWEEN 3000 AND 4000;

## Get the number of records between two rnages

### SELECT COUNT(\*) FROM public.sales WHERE amount BETWEEN 3000 AND 4000;

## BETWEEN with NOT

### SELECT COUNT(\*) FROM public.sales WHERE amount NOT BETWEEN 3000 AND 4000;

## Get the records between two dates

### SELECT \* FROM public.sales WHERE saledate BETWEEN '2021-01-01' AND '2021-01-31';
