-- models/warehouse/fact_glassdoor_reviews.sql

SELECT
    og_title,
    og_description,
    description,
    language,
    source_url,
    status_code::INTEGER AS status_code
FROM {{ ref('stg_glassdoor_web_scrape') }}
