SELECT
    r.listing_id,
    r.review_date,
    l.created_at
FROM {{ ref('fct_reviews') }} r
LEFT JOIN {{ ref('dim_listings_clean') }} l
    ON r.listing_id = l.listing_id
WHERE r.review_date < l.created_at
