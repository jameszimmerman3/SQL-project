-- models/staging/stg_api.sql

with source as (
    select * from {{ source('public', 'reddit_posts') }}
),

renamed as (
    select
        id as post_id,
        title as post_title,
        author,
        score,
        num_comments,
        selftext as post_text,
        created_utc,
        permalink
    from source
)

select * from renamed
