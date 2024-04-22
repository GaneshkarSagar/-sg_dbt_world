select
customername,
segment,
country,
sum(orderprofit) as profit
from {{ ref('stg_orders') }}
group by
customername,
segment,
country