-- query 6: running total of revenue over time
-- uses window function to show cumulative revenue growth

with monthly as (
  select 
    date_trunc(created_at, month) as order_month,
    round(sum(sale_price), 2) as rev
  from `bigquery-public-data.thelook_ecommerce.order_items`
  where status = 'Complete'
  group by order_month
)

select 
  order_month,
  rev as monthly_revenue,
  round(sum(rev) over (order by order_month), 2) as running_total
from monthly
order by order_month asc
