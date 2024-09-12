SELECT
    orders_id
    ,date_date
    ,ROUND(SUM(revenue),2) AS revenue
    ,ROUND(SUM(purchase_cost),2) AS purchase_cost
    ,ROUND(SUM(margin),2) AS margin
    ,SUM(quantity) AS quantity
FROM {{ ref('int_sales_margin') }}
GROUP BY orders_id, date_date