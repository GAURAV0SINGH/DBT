{{config(materialized = 'table', snowflake_warehouse = 'COMPUTE_WH')}}

select * from {{source('raw','customer')}}