SELECT int_orders_operational.date_date,
COUNT(int_orders_operational.orders_id) AS tot_number_of_transactions,
ROUND(SUM(int_orders_operational.revenue), 2) AS revenue,
SUM(int_orders_operational.quantity) AS tot_quantity_of_products_sold,
ROUND(SUM(int_orders_operational.purchase_price), 2) AS purchase_price,
ROUND(SUM(int_orders_operational.revenue) / COUNT(int_orders_operational.orders_id), 2) AS average_basket,
ROUND(SUM(int_orders_operational.margin), 2) AS margin,
ROUND(SUM(int_orders_operational.shipping_fee), 2) AS shipping_fee,
SUM(int_orders_operational.ship_cost) AS ship_cost,
ROUND(SUM(int_orders_operational.log_cost), 2) AS log_cost,
ROUND(SUM(int_orders_operational.operational_margin), 2) AS operational_margin,
FROM {{ ref('int_orders_operational') }}
GROUP BY int_orders_operational.date_date