select teacher_id,count(DISTINCT subject_id) as cnt
from Teacher
group by 1
