{{config(materialized = 'ephemeral')}}
select ord_id,name 
from {{source("raw","orders")}}