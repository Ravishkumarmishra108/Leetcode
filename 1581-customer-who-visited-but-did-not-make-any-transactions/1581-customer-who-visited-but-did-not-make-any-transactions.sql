# Write your MySQL query statement below
select customer_id,count(*) as count_no_trans 
from Visits 
where visit_id NOT IN (SELECT DISTINCT visit_id from Transactions)
group by 1