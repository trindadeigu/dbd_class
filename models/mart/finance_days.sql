SELECT 
    date_date
    ,COUNT(orders_id)
    ,SUM(revenue)
    ,AVG(revenue) OVER (orders_id)
    ,

FROM {{ ref('int_orders_margin') }}
GROUP BY date_date