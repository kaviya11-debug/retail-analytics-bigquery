# Retail Analytics Dashboard - Google BigQuery

## Overview
End-to-end retail analytics project built on Google BigQuery analysing 1M+ row ecommerce dataset to deliver business insights across product performance, customer behaviour and revenue trends.

## Business Questions Answered
1. Which products generate the most revenue?
2. Who are the top customers by total spend?
3. What is the monthly revenue trend over time?
4. Which product categories have the highest cancellation rate?
5. Which categories drive the highest average order value?
6. What does cumulative revenue growth look like over time?

## Key Findings
- Outerwear & Coats is the top revenue category at $342K+
- Skirts has the highest cancellation rate at 16.7%
- Monthly revenue grew consistently from $223 in Jan 2019
- Top customer Raymond Torres spent $1,395 across 4 orders

## Tools Used
- Google BigQuery - cloud SQL queries
- SQL - JOINs, CTEs, window functions, aggregations
- Looker Studio - interactive dashboard
- Git/GitHub - version control

## Dashboard
[View Live Dashboard](https://datastudio.google.com/reporting/2d26c8cc-999d-4eb9-bac4-58cdb7d7b0a9)

## Project Structure
- query1_top_products.sql
- query2_top_customers.sql
- query3_monthly_revenue.sql
- query4_cancellation_rate.sql
- query5_avg_order_value.sql
- query6_running_total.sql

## Business Recommendations

Based on the analysis, three actionable recommendations emerge:

1. Double down on Outerwear & Coats: highest revenue category at $342K+ and highest average order value at $148. Prioritise inventory and marketing budget here heading into winter months.

2. Investigate Skirts category urgently: 16.7% cancellation rate is significantly above the portfolio average. Root cause likely includes sizing inconsistencies or misleading product imagery — immediate corrective action needed.

3. Focus retention on top customers: Raymond Torres and the top 10 customers show high order frequency across multiple countries. A targeted loyalty programme for this segment could meaningfully increase lifetime value.
