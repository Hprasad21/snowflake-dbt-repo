{% snapshot scd_table %}
{{
    config(
      target_schema='Random',
      unique_key='ID',
      strategy='check',
      check_cols=['first_name', 'last_name'],
    )
}}

SELECT * FROM {{ source('hari_sources', 'SCD_EG') }}

{% endsnapshot %}

