# LIKE clause is used to get the details from table by matching column value using widcards or pattern matching

## Syntax

## SELECT \* FROM table_name WHERE column_name LIKE '%value%' ;

## LIKE '%value%' syntax used to get records those columns contains specific word or char.

### SELECT \* FROM public.products WHERE product LIKE '%C%';

## LIKE 'value%' syntax used to get records those column value starts with specific word or char.

### SELECT \* FROM public.products WHERE product LIKE 'R%';

## LIKE '%value' syntax used to get records those column value ends with specific word or char.

### SELECT \* FROM public.products WHERE product LIKE '%Choco';

## ILIKE clause use for case sensitive

### SELECT \* FROM public.products WHERE product ILIKE '%n%';

## LIKE with underscore(\_) used to replace single charactor.

### SELECT \* FROM public.products WHERE product LIKE '\_ilk%';
