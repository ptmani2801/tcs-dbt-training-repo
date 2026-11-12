with resultset as (
    select * from {{ source('project_dbt', 'listings') }}
)
select
    id AS listing_id,
    name AS listing_name,
    listing_url,
    room_type,
    minimum_nights,
    host_id,
    price AS price_str,
    created_at,
    updated_at
from resultset