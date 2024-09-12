SELECT 
    orders_id
    ,products_id
    ,date_date
    ,revenue
    ,quantity
    ,quantity * purchase_price AS purchase_cost
    ,revenue - (quantity * purchase_price) AS margin
FROM {{ ref('stg_raw__sales') }}
LEFT JOIN {{ ref('stg_raw__product') }} USING (products_id)