select
    *,
    (margin + shipping_fee - log_cost - ship_cost) AS operational_margin
from {{ ref('int_orders_margin') }} om
right join {{ ref('stg_raw__ship') }} sm
using (orders_id)