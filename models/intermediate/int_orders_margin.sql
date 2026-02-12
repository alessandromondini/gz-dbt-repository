select
    int_sales_margin.orders_id,
    int_sales_margin.date_date,
    SUM(int_sales_margin.revenue) AS revenue,
    SUM(int_sales_margin.quantity) AS quantity,
    SUM(int_sales_margin.purchase_price) AS purchase_price,
    SUM(int_sales_margin.margin) AS margin
from {{ ref('int_sales_margin') }}
GROUP BY int_sales_margin.orders_id, int_sales_margin.date_date