select s.*
, round(s.quantity * p.purchase_price,2) as purchase_cost
, round (revenue - (s.quantity * p.purchase_price),2) as margin
from {{ ref ('stg_raw__sales') }} as s
inner join {{ ref ('stg_raw__product') }} as p
on s.product_id = p.products_id
