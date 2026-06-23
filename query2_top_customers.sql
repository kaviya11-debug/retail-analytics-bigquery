-- query 2: top 10 customers by total spending
-- joins orders with users table
-- only completed orders

select 
  u.first_name || ' ' || u.last_name as customer_name,
  u.country,
  count(o.order_id) as total_orders,
  round(sum(oi.sale_price), 2) as total_spent
from `bigquery-public-data.thelook_ecommerce.orders` o
join `bigquery-public-data.thelook_ecommerce.users` u
  on o.user_id = u.id
join `bigquery-public-data.thelook_ecommerce.order_items` oi
  on o.order_id = oi.order_id
where o.status = 'Complete'
group by customer_name, u.country
order by total_spent desc
limit 10
