SELECT
DATE_TRUNC(date_date,MONTH) AS date_month,
SUM(ads_margin) AS ads_margin,
SUM(avg_basket) AS avg_basket
FROM {{ref("finance_campagns_day")}}
GROUP BY date_month