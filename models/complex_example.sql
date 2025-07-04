SELECT *
FROM {{ source('hari_sources', 'payment_modes') }}