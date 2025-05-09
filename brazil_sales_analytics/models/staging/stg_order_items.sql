{{ config(materialized='view') }}

SELECT
    order_id,
    product_id,
    order_item_id,
    price,
    seller_id
FROM
    `brazilian-ecommerce-457518.brazil_sales.order_items`
WHERE order_id IS NOT NULL
  AND product_id IS NOT NULL
  AND order_item_id IS NOT NULL
