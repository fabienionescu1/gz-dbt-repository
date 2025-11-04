WITH source AS (
    SELECT * 
    FROM {{ source('raw', 'sales') }}
),

renamed AS (
    SELECT
        orders_id AS order_id,
        date_date AS order_date,
        pdt_id AS product_id,
        quantity,
        revenue AS total_revenue
    FROM source
)

SELECT * FROM renamed
