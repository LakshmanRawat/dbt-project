SELECT 
    o.order_id,
    s.shift_id,
    s.staff_id
FROM {{ ref('stg_order') }} o
LEFT JOIN {{ ref('stg_time_punch') }} s
    ON o.location_id = CAST(s.location_id AS STRING)
    AND o.order_datetime BETWEEN s.shift_start_time AND s.shift_end_time
