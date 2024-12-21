SELECT DISTINCT
    u.id AS staff_id,
    u.first_name || ' ' || u.last_name AS staff_name,
    r.name AS role_during_order
FROM {{ ref('stg_user') }} u
LEFT JOIN {{ ref('stg_user_role_assignment') }} ura ON u.id = ura.user_id
LEFT JOIN {{ ref('stg_role') }} r ON ura.id = r.id
