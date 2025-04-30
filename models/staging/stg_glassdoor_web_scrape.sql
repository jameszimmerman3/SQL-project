-- models/staging/stg_glassdoor_web_scrape.sql

WITH source AS (
    SELECT *
    FROM {{ source('public', 'glassdoor_metadata') }}
),

renamed AS (
    SELECT
        "metadata.ogTitle" AS og_title,
        "metadata.ogDescription" AS og_description,
        "metadata.description" AS description,
        "metadata.language" AS language,
        "metadata.sourceURL" AS source_url,
        "metadata.statusCode" AS status_code
    FROM source
)

SELECT * FROM renamed
