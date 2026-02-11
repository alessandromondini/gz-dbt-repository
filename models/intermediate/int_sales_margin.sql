select
    *,
    revenue - (purchase_price*quantity) AS margin
from {{ ref("stg_raw__sales") }} s
left join {{ ref("stg_raw__product") }} p using (products_id)