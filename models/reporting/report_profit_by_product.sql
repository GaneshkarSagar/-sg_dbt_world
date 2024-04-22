select
productid,
productname,
subcategory,
sum(orderprofit) as profit
from {{ ref('stg_orders') }}
group by
productid,
productname,
subcategory