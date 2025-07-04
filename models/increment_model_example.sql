{{
  config(
    materialized = 'incremental'
  )
}}

SELECT * 
FROM {{ source('hari_sources', 'DIM_SALES') }} t1
{% if is_incremental() %}
WHERE t1.date > (SELECT MAX(date) FROM {{ this }})
{% endif %}