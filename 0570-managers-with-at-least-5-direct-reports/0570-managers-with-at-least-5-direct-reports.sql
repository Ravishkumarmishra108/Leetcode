# Write your MySQL query statement below
with mng_id as(
select managerID from(
    select managerID,count(id)
    from employee
    where managerID is not null
    group by managerID
    having count(id)>=5) t1
)

select name from employee
inner join mng_id
on id=mng_id.managerID