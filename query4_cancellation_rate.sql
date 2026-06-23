-- query 4: return rate by product category
-- compares cancelled vs total orders per category

select 
  p.category,
  count(oi.order_id) as total_orders,
  countif(oi.status = 'Cancelled') as cancelled_orders,
  round(countif(oi.status = 'Cancelled') / count(oi.order_id) * 100, 2) as cancellation_rate_pct
from `bigquery-public-data.thelook_ecommerce.order_items` oi
join `bigquery-public-data.thelook_ecommerce.products` p
  on oi.product_id = p.id
group by p.category
order by cancellation_rate_pct desc
limit 10
