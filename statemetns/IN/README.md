# IN clause is used to get the details from database table by passingmore that one value to WHERE claues

## Syntax

## SELECT \* FROM table_name WHERE column_name IN(valueOne,valueTwo) ;

## Getting the records having column value G1,G2

### SELECT \* FROM public.sales WHERE geoid IN('G1','G2');

## Getting the records not having column value G1,G2

### SELECT \* FROM public.sales WHERE geoid NOT IN('G1','G2');

## IN on multiple columns

### SELECT \* FROM public.sales WHERE geoid IN('G1','G2') AND pid IN('P1');
