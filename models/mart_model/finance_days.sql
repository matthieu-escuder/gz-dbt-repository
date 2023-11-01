select
    date_date,
    count(orders_id) as nb_transactions,
    round(sum(revenue), 2) as revenue,
    round(sum(revenue) / count(orders_id), 2) as avg_basket,
    round(sum(margin), 2) as margin,
    round(sum(operational_margin)) as operational_margin
from {{ ref("int_orders_operationals") }}
group by date_date
order by date_date desc