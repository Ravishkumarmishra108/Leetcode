# Write your MySQL query statement below
SELECT pr.product_name,sl.year,sl.price
FROM Sales sl
INNER JOIN Product pr
ON sl.product_id=pr.product_id