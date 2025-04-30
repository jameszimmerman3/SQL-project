-- models/warehouse/dim_jobs.sql

select distinct
    og_title as job_title
from {{ ref('stg_glassdoor_web_scrape') }}
where og_title is not null
