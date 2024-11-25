select s.user_id,case when c.time_stamp is NULL then 0.00
else round(sum(c.action='confirmed')/count(*),2)
end as confirmation_rate
from signups s 
left join confirmations c 
on s.user_id = c.user_id
group by user_id