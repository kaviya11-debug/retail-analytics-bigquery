-- query 5: average order value by product category
-- helps identify which categories drive highest value orders

select 
  p.category,
  count(distinct oi.order_id) as total_orders,
  round(avg(oi.sale_price), 2) as avg_order_value,
  round(sum(oi.sale_price), 2) as total_revenue
from `bigquery-public-data.thelook_ecommerce.order_items` oi
join `bigquery-public-data.thelook_ecommerce.products` p
  on oi.product_id = p.id
where oi.status = 'Complete'
group by p.category
order by avg_order_value desc
limit 10

