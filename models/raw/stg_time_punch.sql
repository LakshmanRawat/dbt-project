SELECT * 
FROM {{ source('sevenshifts', 'time_punch') }}
