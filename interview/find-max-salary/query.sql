
-- Approach -1(Using rank())
with cts as (
            SELECT constituency_id, candidate_id, votes, rank() over(order by votes desc) as rnk
            FROM results order by votes desc
)
select * from cts where rnk=2;

-- Approach-2( Using row_number())
with cts as (
            SELECT constituency_id, candidate_id, votes, row_number() over(order by votes desc) as rnk
            FROM results order by votes desc
)
select constituency_id, candidate_id, votes from cts where rnk=2;

-- Approach-3( Using limit)
with cts as (
            SELECT constituency_id, candidate_id, votes
            FROM results order by votes desc LIMIT 2
)
select * from cts order by votes LIMIT 1;
