SELECT * FROM {{ ref('mart_dim_listings_hosts') }}
WHERE minimum_nights < 1
LIMIT 10