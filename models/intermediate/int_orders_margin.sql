select
    *,
from {{ ref('int_sales_margin') }}
GROUP BY order_id