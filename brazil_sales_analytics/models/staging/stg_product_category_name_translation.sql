{{ config(materialized='view') }}

SELECT
    product_category_name,
    product_category_name_english
FROM
    `brazilian-ecommerce-457518.brazil_sales.category_translation`
WHERE product_category_name IS NOT NULL
