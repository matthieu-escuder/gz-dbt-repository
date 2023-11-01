
select f.*,
(f.operational_margin - i.ads_cost) as ads_margin

from {{ref("finance_days") }} f
inner join  {{ ref("int_campagns_day") }} i
on i.date_date = f.date_date
