SELECT DISTINCT
    osm.staff_id,
    osm.order_id,
    osm.shift_id,
    sd.staff_name,
    sd.role_during_order
FROM {{ ref('inter_order_shift_mapping') }} osm
LEFT JOIN {{ ref('inter_staff_data') }} sd ON osm.staff_id = sd.staff_id
