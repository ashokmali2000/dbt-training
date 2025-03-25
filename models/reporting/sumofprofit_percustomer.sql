select
customerid,
customername, 
country,
sum(orderprofit) as Profit
from {{ ref('stg') }}
group by 
customerid,
customername, 
country