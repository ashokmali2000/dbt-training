select
--from raw orders
o.orderdate,
o.orderid,
o.shipdate,
o.shipmode,
o.ordersellingprice,
o.ordercostprice,
o.ordersellingprice - o.ordercostprice as orderprofit,
--from raw products
p.productid,
p.category,
p.productname,
p.subcategory,
--from raw customers
c.customerid,
c.customername, 
c.country
from {{ ref('raw_orders') }} as o
left join {{ ref('raw_product') }} as p
on o.productid = p.productid
left join {{ ref('raw_customers') }}  as c
on o.customerid = c.customerid


