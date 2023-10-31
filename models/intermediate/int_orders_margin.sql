select m.date_date
, m.orders_id
, m.margin
, round (m.margin + s.shipping_fee - s.logcost - s.Ship_cost) as operational_margin
from {{ ref ('int_sales_margin') }} as m
inner join {{ ref ('stg_raw__ship') }} as s
on m.orders_id = s.orders_id
