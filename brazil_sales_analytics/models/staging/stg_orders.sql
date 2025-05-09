{{ config(materialized='view') }}

SELECT
    order_id,
    customer_id,
    order_status,
    order_purchase_timestamp AS purchase_timestamp,
    order_approved_at,
    order_delivered_carrier_date,
    order_delivered_customer_date,
    order_estimated_delivery_date
FROM
    `brazilian-ecommerce-457518.brazil_sales.orders`
WHERE order_id IS NOT NULL -- Removing records where order_id is null
