-- models/staging/stg_reddit_api.sql

WITH source AS (
    SELECT *
	from {{ source('public', 'reddit_posts') }}
),

renamed AS (
    SELECT
        id AS reddit_post_id,
        title,
        author,
        score,
        num_comments,
        created_utc,
        selftext,
        permalink
    FROM source
)

SELECT * FROM renamed
