# GROUP BY used to group the rows those are having common values, it us used with aggigrate functions like AVG,SUM

## Syntax.

## SELECT column_name, MAX(column_name_agg) FROM public.sales GROUP BY geoid ORDER BY MAX(column_name_agg);

### SELECT geoid, count(amount) FROM public.sales GROUP BY geoid ORDER BY count(amount);

## GROUP BY WITH ORDER BY

### SELECT geoid, pid, SUM(amount) FROM public.sales GROUP BY geoid,pid ORDER BY geoid,pid,SUM(amount) ASC;
