# TIME_STAMP

## SHOW TIMEZONE;

## SELECT NOW();

## SELECT TIMEOFDAY();

## SELECT CURRENT_TIME;

## SELECT CURRENT_DATE;

# EXTRACT() is used to extract specific identifier

## SELECT EXTRACT(YEAR FROM create_time) FROM batch_step_execution;

## SELECT EXTRACT(DAY FROM create_time) FROM batch_step_execution;

## SELECT EXTRACT(MONTH FROM create_time) as month_of_payment FROM batch_step_execution;

## SELECT EXTRACT(QUARTER FROM create_time) as month_of_payment FROM batch_step_execution;

# AGE() is used to get the how many days

## SELECT AGE(create_time) FROM batch_step_execution;

# TO_CHAR() is used to convert date to other formte

## SELECT TO_CHAR(create_time,'MONTH-YYYY') FROM batch_step_execution;

## SELECT TO_CHAR(create_time,'MM/dd/YYYY') FROM batch_step_execution;
