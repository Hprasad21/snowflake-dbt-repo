{{ config(materialized='ephemeral') }}
SELECT * FROM {{ source('hari_sources', 'USERS') }}