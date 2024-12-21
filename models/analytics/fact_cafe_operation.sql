SELECT 
    o.order_id,
    o.order_datetime,
    o.order_channel,
    o.total_order_revenue,
    oli.menu_item_id,
    oli.menu_item_name,
    oli.quantity_sold,
    oli.item_revenue,
    f.staff_id,
    f.staff_name,
    f.role_during_order,
    o.customer_id,
    c.customer_name,
    c.customer_email
FROM {{ ref('inter_final_data') }} f
LEFT JOIN {{ ref('stg_order') }} o 
    ON f.order_id = o.order_id
LEFT JOIN {{ ref('stg_order_line_data') }} oli 
    ON o.order_id = oli.order_id
LEFT JOIN {{ ref('stg_customer_data') }} c 
    ON o.customer_id = c.customer_id
