# Write your MySQL query statement below
select class from(
    select class,count(student) as cnt
    from courses cr
    group by class
    having count(student)>=5
) five_std