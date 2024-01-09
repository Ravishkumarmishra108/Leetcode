# Write your MySQL query statement below
select id from
(select id,temperature,
lag(temperature,1) over(order by recordDate) as p_tmp,
datediff(recordDate,lag(recordDate,1) over(order by recordDate)) as date_diff
from Weather)  as w
where temperature>p_tmp and date_diff=1