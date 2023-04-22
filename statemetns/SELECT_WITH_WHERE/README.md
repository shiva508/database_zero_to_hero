# SELECT with WHERE clause is used to filter the rows with specific column data

## Syntax

## SELECT \* FROM table_name WHERE column_name='something';

### (or)

## SELECT column_one,column_two FROM table_name WHERE column_name='something';

## Filter table data using single column

### SELECT \* FROM products WHERE category='Bars';

## Filter table data using multiple columns

### SELECT \* FROM products WHERE category='Bars' AND size='LARGE';

### SELECT \* FROM products WHERE category='Bars' OR size='LARGE';

### SELECT \* FROM products WHERE category !='Bars' AND size='LARGE';

## We can also filter table data using numaric conditions as well like >,<,

### SELECT \* FROM products WHERE cost_per_box>4;

## We can use COUNT with SELECT AND WHERE to get the number of rows satisfis condition

### SELECT COUNT(\*) FROM products WHERE category='Bars' AND size='LARGE';
