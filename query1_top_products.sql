-- query 1: top selling products by revenue
-- joins order_items with products table
-- only includes completed orders

select 
  p.name as product_name,
  p.category as category,
  count(oi.order_id) as total_orders,
  sum(oi.sale_price) as total_revenue
from `bigquery-public-data.thelook_ecommerce.order_items` oi
join `bigquery-public-data.thelook_ecommerce.products` p
  on oi.product_id = p.id
where oi.status = 'Complete'
group by p.name, p.category
order by total_revenue desc
limit 10
