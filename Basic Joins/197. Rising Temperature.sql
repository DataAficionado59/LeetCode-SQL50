with cte as
(Select *, date_add(recordDate, interval -1 day) as yesterday_date, 
lag(recordDate) Over(order by recordDate) as previous_recordDate,lag(temperature)
over(order by recordDate) as prev_temp from weather)

select id
from cte
where yesterday_date=previous_recordDate 
and temperature>prev_temp