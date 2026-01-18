{{config(materialized = 'incremental',unique_key = 'ord_id', incremental_strategy = 'merge')}}

select * from {{source("raw","orders")}}