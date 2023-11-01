select
orders.*,
ROUND(margin + shipping_fee - logcost - ship_cost,3) AS operational_margin
from {{ref('int_orders_margin') }} AS orders
JOIN {{ref('stg_raw__ship') }} AS ship
ON orders.orders_id=ship.orders_id