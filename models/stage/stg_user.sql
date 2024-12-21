SELECT * 
FROM {{ source('sevenshifts', 'users') }}
