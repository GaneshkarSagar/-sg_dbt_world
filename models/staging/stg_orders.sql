
select 
--raw order data
o.orderid,
o.orderdate,
o.shipdate,
o.shipmode,
o.ordersellingprice - o.ordercostprice as orderprofit,

-- raw customer data
c.customername,
c.segment,
c.country,

--raw product data
p.productid,
p.category,
p.productname,
p.subcategory
from {{ ref('raw_order') }} as o
left join {{ ref('raw_customer') }} as c
left join {{ ref('raw_product') }} as p


