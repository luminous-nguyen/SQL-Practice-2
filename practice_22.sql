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
  SELECT user_id, 
max(post_date::DATE) - min(post_date::DATE)
from posts
where DATE_PART('year',post_date::DATE) = 2021 
group by user_id 
having count(user_id) >= 2
-- Ex 7
SELECT card_name, max(issued_amount) - min(issued_amount) as difference
FROM monthly_cards_issued
group by card_name
order by max(issued_amount) - min(issued_amount) desc 
-- Ex 8
SELECT manufacturer, 
count(drug) as drug_count,
abs(sum(total_sales) - sum(cogs)) as total_loss
FROM pharmacy_sales
where total_sales < cogs	
group by manufacturer
order by abs(sum(total_sales) - sum(cogs)) desc
-- Ex 9
select c.* 
from cinema c
where c.id %2 != 0
and c.description not in('boring')
order by c.rating desc
-- Ex 10
select teacher_id, 
count(distinct(subject_id)) as cnt
from teacher 
group by teacher_id
-- Ex 11
select user_id,
count(follower_id) as followers_count
from followers
group by user_id
order by user_id 
-- Ex 12
select class
from courses
group by class
having count(student) >= 5
