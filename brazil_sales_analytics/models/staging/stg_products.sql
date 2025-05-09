{{ config(materialized='view') }}

SELECT
    product_id,
    product_category_name,
    product_name_length,
    product_description_length,
    product_photos_qty,
    product_weight_g,
    product_length_cm,
    product_height_cm,
    product_width_cm
FROM
    `brazilian-ecommerce-457518.brazil_sales.products`
WHERE product_id IS NOT NULL
