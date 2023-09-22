
--- #1) Election Results ---

-- DATASET
create table candidates
(
    id      int,
    gender  varchar(1),
    age     int,
    party   varchar(20)
);
insert into candidates values(1,'M',55,'Democratic');
insert into candidates values(2,'M',51,'Democratic');
insert into candidates values(3,'F',62,'Democratic');
insert into candidates values(4,'M',60,'Republic');
insert into candidates values(5,'F',61,'Republic');
insert into candidates values(6,'F',58,'Republic');

create table results
(
    constituency_id     int,
    candidate_id        int,
    votes               int
);
insert into results values(1,1,847529);
insert into results values(1,4,283409);
insert into results values(2,2,293841);
insert into results values(2,5,394385);
insert into results values(3,3,429084);
insert into results values(3,6,303890);

select * from candidates;
select * from results;


-- SOLUTION
with cte as
    (select *
    , rank() over(partition by r.constituency_id order by r.votes desc) as rnk
    from candidates c
    join results r on r.candidate_id = c.id)
select concat(party, ' ', count(1)) as party_seats_won
from cte 
where rnk = 1
group by party 
order by count(1) desc;





--- #2) Advertising System Deviations report ---

-- DATASET
drop table if exists customers;
create table customers
(
    id          int,
    first_name  varchar(50),
    last_name   varchar(50)
);
insert into customers values(1, 'Carolyn', 'O''Lunny');
insert into customers values(2, 'Matteo', 'Husthwaite');
insert into customers values(3, 'Melessa', 'Rowesby');

drop table if exists campaigns;
create table campaigns
(
    id          int,
    customer_id int,
    name        varchar(50)
);
insert into campaigns values(2, 1, 'Overcoming Challenges');
insert into campaigns values(4, 1, 'Business Rules');
insert into campaigns values(3, 2, 'YUI');
insert into campaigns values(1, 3, 'Quantitative Finance');
insert into campaigns values(5, 3, 'MMC');

drop table if exists events;
create table events
(
    campaign_id int,
    status      varchar(50)
);
insert into events values(1, 'success');
insert into events values(1, 'success');
insert into events values(2, 'success');
insert into events values(2, 'success');
insert into events values(2, 'success');
insert into events values(2, 'success');
insert into events values(2, 'success');
insert into events values(3, 'success');
insert into events values(3, 'success');
insert into events values(3, 'success');
insert into events values(4, 'success');
insert into events values(4, 'success');
insert into events values(4, 'failure');
insert into events values(4, 'failure');
insert into events values(5, 'failure');
insert into events values(5, 'failure');
insert into events values(5, 'failure');
insert into events values(5, 'failure');
insert into events values(5, 'failure');
insert into events values(5, 'failure');

insert into events values(4, 'success');
insert into events values(5, 'success');
insert into events values(5, 'success');
insert into events values(1, 'failure');
insert into events values(1, 'failure');
insert into events values(1, 'failure');
insert into events values(2, 'failure');
insert into events values(3, 'failure');

select * from customers;
select * from campaigns;
select * from events;


-- SOLUTION
with cte as 
    (select (cst.first_name||' '||cst.last_name) as customer
    , ev.status as event_type
    , string_agg(distinct cmp.name, ', ') as campaign 
    , count(1) as total
    , rank() over (partition by status order by count(1) desc) as rnk
    from customers cst
    join campaigns cmp on cmp.customer_id = cst.id
    join events ev on ev.campaign_id = cmp.id
    group by customer, status)
select event_type, customer, campaign, total
from cte 
where rnk = 1
order by event_type desc







--- #3) Election Exit Poll by state report ---

-- DATASET
drop table if exists candidates_tab;
create table candidates_tab
(
    id          int,
    first_name  varchar(50),
    last_name   varchar(50)
);
insert into candidates_tab values(1, 'Davide', 'Kentish');
insert into candidates_tab values(2, 'Thorstein', 'Bridge');

drop table if exists results_tab;
create table results_tab
(
    candidate_id    int,
    state           varchar(50)
);
insert into results_tab values(1, 'Alabama');
insert into results_tab values(1, 'Alabama');
insert into results_tab values(1, 'California');
insert into results_tab values(1, 'California');
insert into results_tab values(1, 'California');
insert into results_tab values(1, 'California');
insert into results_tab values(1, 'California');
insert into results_tab values(2, 'California');
insert into results_tab values(2, 'California');
insert into results_tab values(2, 'New York');
insert into results_tab values(2, 'New York');
insert into results_tab values(2, 'Texas');
insert into results_tab values(2, 'Texas');
insert into results_tab values(2, 'Texas');

insert into results_tab values(1, 'New York');
insert into results_tab values(1, 'Texas');
insert into results_tab values(1, 'Texas');
insert into results_tab values(1, 'Texas');
insert into results_tab values(2, 'California');
insert into results_tab values(2, 'Alabama');

select * from candidates_tab;
select * from results_tab;


-- SOLUTION

with cte as
    (select concat(first_name,' ',last_name) as candidate_name
    , state
    , count(1) as total
    , dense_rank() over(partition by concat(first_name,' ',last_name) order by count(1) desc) as rnk
    from candidates_tab c
    join results_tab r on r.candidate_id = c.id
    group by candidate_name, state)
select candidate_name
, string_agg(case when rnk = 1 then state||' ('||total||')' end, ', ' order by state) as "1st_place"
, string_agg(case when rnk = 2 then state||' ('||total||')' end, ', ') as "2nd_place"
, string_agg(case when rnk = 3 then state||' ('||total||')' end, ', ') as "3rd_place"
from cte 
where rnk <= 3
group by candidate_name



