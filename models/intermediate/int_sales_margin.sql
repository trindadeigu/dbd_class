SELECT *
,quantity * purchase_price AS purchase_cost
,revenue - (quantity * purchase_price) AS margin
FROM {{ ref('stg_raw__sales') }}
LEFT JOIN {{ ref('stg_raw__product') }} USING (products_id)