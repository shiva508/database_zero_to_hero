# AS is used to give alias name to colun or table

## Syntax

## SELECT column_name AS aliasname FROM table_name

## SELECT atn.column_name AS aliasname FROM table_name AS atn

### SELECT geoid, pid, SUM(amount) AS totalamount FROM public.sales GROUP BY geoid,pid HAVING SUM(amount) >291599 ORDER BY geoid,pid,SUM(amount) ASC

## Alias name can not be used in WHERE or GROUP BY as alias name is available at the end of execution of query
