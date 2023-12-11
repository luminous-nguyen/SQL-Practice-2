-- Ex 1
select distinct s.city from station s where s.id % 2 = 0;
-- Ex 2
select count(s.city) - count(distinct(s.city)) as difference from station s;
-- Ex 3
select ceil(avg(e.salary)-avg(replace(e.salary,0,''))) from employees e 
-- Ex 4
SELECT 
round(cast(sum(item_count*order_occurrences) as decimal(12,2))/cast(sum(order_occurrences) as decimal(12,2)),1) as mean
FROM items_per_order
-- Ex 5
SELECT candidate_id FROM candidates
where skill in ('Python', 'Tableau', 'PostgreSQL')
group by candidate_id
having count(skill) =3
-- Ex 6
