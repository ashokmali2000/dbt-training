select 
    productid,
    category,
    productname,
    subcategory, 
    sum(orderprofit) as Profit,
from {{ ref('stg') }}
    group by 
    productid,
    category,
    productname,
    subcategory