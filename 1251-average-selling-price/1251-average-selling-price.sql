# Write your MySQL query statement below
select p.product_id,IFNULL(round(SUM(p.price*u.units)/sum(u.units),2),0) AS average_price
from Prices as p
left join 
UnitsSold as u
ON p.product_id=u.product_id
and u.purchase_date between p.start_date
and p.end_date
group by 1