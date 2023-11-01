
select
orders_id,
date_date,
ROUND(SUM(revenue),3) AS revenue,
ROUND(SUM (quantity),3) AS quantity,
ROUND(SUM(purchase_cost),3) AS purchase_cost,
ROUND(SUM(margin),3) AS margin
from {{ref('int_sales_margin') }}
GROUP BY orders_id,date_date