Select customer_id, count(visit_id) as count_no_trans 
from(
    Select Vi.visit_id, Vi.customer_id, tr.transaction_id
    from Visits Vi left join Transactions tr
    on Vi.visit_id = tr.visit_id
    where tr.transaction_id is null) subq
group by customer_id;