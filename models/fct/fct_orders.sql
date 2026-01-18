{{config(materialized = 'incremental',unique_key = 'ord_id')}}
select * from {{source('fact','orders')}}
{% if is_incremental() %}
    where update_at > (select max(update_at) from {{this}})
{% endif %}