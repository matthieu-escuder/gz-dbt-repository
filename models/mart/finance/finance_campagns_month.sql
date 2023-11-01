SELECT
DATE_TRUNC(date_date,MONTH) AS date_month,
round (SUM(ads_margin),2) AS ads_margin,
round (SUM(avg_basket),2) AS avg_baskett
FROM {{ref('finance_campagns_day')}}
GROUP BY date_month
order by date_month