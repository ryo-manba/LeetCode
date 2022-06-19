select sell_date,
count(distinct product) num_sold,
group_cancat(distinct product) as products
from Activities
group by 1
