{{ config(materialized='view') }}

SELECT
    o.order_id,
    COALESCE(o.customer_id, 'Unknown') AS customer_id,
    COALESCE(o.order_status, 'Unknown') AS order_status,
    o.purchase_timestamp,
    oi.product_id,
    COALESCE(p.product_category_name, 'Unknown') AS product_category_name,
    COALESCE(pct.product_category_name_english, 'Unknown') AS product_category_name_english,
    COALESCE(oi.price, 0) AS price,
    COALESCE(oi.seller_id, 'Unknown') AS seller_id
FROM
    {{ ref('stg_order_items') }} oi
JOIN
    {{ ref('stg_orders') }} o ON oi.order_id = o.order_id
JOIN
    {{ ref('stg_products') }} p ON oi.product_id = p.product_id
LEFT JOIN
    {{ ref('stg_product_category_name_translation') }} pct ON p.product_category_name = pct.product_category_name
