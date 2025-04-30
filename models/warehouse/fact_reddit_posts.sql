-- models/warehouse/fact_reddit_posts.sql

-- COMMENT: This is our warehouse layer for Reddit posts data
SELECT
    reddit_post_id,
    title,
    author,
    score,
    num_comments,
    created_utc::timestamp AS created_at,
    selftext,
    permalink
FROM {{ ref('stg_reddit_api') }}
