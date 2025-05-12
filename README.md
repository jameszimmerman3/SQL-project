# Snap Signals

## Tech Stack

- Python (PRAW, Pandas)
- SQL (PostgreSQL)
- AWS RDS
- dbt (staging and warehouse models)
- GitHub Actions (CI/CD automation)
- Looker Studio (visualizations)
- Markdown / Git

## Project Objective

**Who are you helping:**  
Snap Inc.'s Data Science and Talent Strategy teams

**What problem are you solving:**  
Misalignment between public perception and Snap's actual hiring priorities can slow recruiting and reduce offer acceptance.

**How are you solving it:**  
By comparing Reddit sentiment (API) and Indeed job listings (web scrape) to identify high-ROI focus areas and communication gaps using Python, SQL, dbt, and visualization tools.

## Job Description

This project was inspired by a **Data Scientist role at Snap Inc.**, focused on using data insights to inform product and business strategy. The role emphasizes statistical modeling, product trend discovery, and stakeholder communication — all mirrored in this project's goal of aligning hiring data with public sentiment.

🔗 [Job_Description.pdf](./proposal/Job_Description.pdf)

## Data

**Sources:**
- Reddit API via PRAW (https://www.reddit.com/dev/api/)
- Indeed Job Postings (scraped via Firecrawl from public job listings)

**Characteristics:**
- 1800+ Reddit posts from tech subreddits
- 10 Snap job listings from Indeed with salary info and job titles

## Notebooks / Python Scripts

- [`reddit_API_Extract_Load_Raw.ipynb`](./notebooks/reddit_API_Extract_Load_Raw.ipynb):  
  Extracts Reddit posts using PRAW, filters by keywords/subreddits, and loads to PostgreSQL.

- [`reddit_API_SQL_Analysis.ipynb`](./notebooks/reddit_API_SQL_Analysis.ipynb):  
  Tags Reddit posts by topic, ranks themes by upvotes/comments, and analyzes older vs. recent engagement.

- [`github_Snap_Web_Scrape_Extract_Load_Raw_milestone1 (1).ipynb`](./notebooks/github_Snap_Web_Scrape_Extract_Load_Raw_milestone1%20(1).ipynb):  
  Scrapes public Snap job listings from Indeed using Firecrawl and loads to PostgreSQL.

- [`Indeed_Web_Scrape_SQL_Analysis.ipynb`](./notebooks/Indeed_Web_Scrape_SQL_Analysis.ipynb):  
  Parses salary ranges, tags job roles and seniority, calculates heat index and salary trends across levels.

- `reddit_snap_cleaned_tagged.csv`:  
  Cleaned and tagged Reddit dataset used in analysis (not a notebook).


## Future Improvements

- Add NLP sentiment analysis using VADER or TextBlob  
- Visualize time-series shifts in Reddit engagement using Looker or Tableau  

