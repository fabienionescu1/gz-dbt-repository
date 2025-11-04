WITH source AS (
    SELECT * 
    FROM {{ source('raw', 'ship') }}
),

cleaned AS (
    SELECT
        orders_id AS order_id,
        shipping_fee,
        SAFE_CAST(ship_cost AS FLOAT64) AS ship_cost
    FROM source
    WHERE shipping_fee IS NOT NULL
)

SELECT * FROM cleaned
