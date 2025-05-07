-- models/staging/stg_reddit_api.sql

SELECT
  id,
  title,
  author,
  score,
  num_comments,
  created_utc,
  selftext,
  permalink,
  keyword_flag  -- ← add this!
FROM {{ source('sql_project', 'reddit_posts') }}

