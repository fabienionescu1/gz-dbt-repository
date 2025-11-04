WITH source AS (
    SELECT * 
    FROM {{ source('raw', 'product') }}
),

cleaned AS (
    SELECT
        products_id AS product_id,
        SAFE_CAST(`purchse_PRICE` AS FLOAT64) AS purchase_price
    FROM source
)

SELECT * FROM cleaned
