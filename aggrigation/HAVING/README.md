# HAVING is used with GROUP BY to apply filtering on aggrigated value, as

## Syntax.

## SELECT column_name, MAX(column_name_agg) FROM public.sales GROUP BY geoid HAVING MAX(column_name_agg)>100 ORDER BY MAX(column_name_agg);

### SELECT geoid, pid, SUM(amount) FROM public.sales GROUP BY geoid,pid HAVING SUM(amount) >291599 ORDER BY geoid,pid,SUM(amount) ASC;
