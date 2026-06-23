-- query 3: monthly revenue trend for completed orders
-- shows how revenue changes month by month

select 
  date_trunc(created_at, month) as month,
  count(order_id) as total_orders,
  round(sum(sale_price), 2) as monthly_revenue
from `bigquery-public-data.thelook_ecommerce.order_items`
where status = 'Complete'
group by month
