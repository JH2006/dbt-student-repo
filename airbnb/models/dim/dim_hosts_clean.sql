{{
    config(
        materialized = 'view'
    )
}}

with src_hosts as (
    select * from {{ref("src_hosts")}}
)

select 
    NVL(host_name, 'Anonymous') as host_name,
    host_id, 
    IS_SUPERHOST,
    created_at,
    updated_at
from
    src_hosts


