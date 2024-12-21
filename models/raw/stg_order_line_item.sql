SELECT * 
FROM {{ source('square', 'order_line_item') }}
