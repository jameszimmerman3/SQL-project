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

## 🗂️ Data

**Sources:**
- Reddit API via PRAW (https://www.reddit.com/dev/api/)
- Indeed Job Postings (scraped via Firecrawl from public job listings)

**Characteristics:**
- 1800+ Reddit posts from tech subreddits
- 10 Snap job listings from Indeed with salary info and job titles

## Notebooks / Python Scripts

- [`API_Extract_Load_Raw.ipynb`](./notebooks/API_Extract_Load_Raw.ipynb): Pulls Reddit posts using PRAW and uploads to PostgreSQL  
- [`Web_Scrape_Extract_Load_Raw.ipynb`](./notebooks/Web_Scrape_Extract_Load_Raw.ipynb): Scrapes Indeed job descriptions and uploads to PostgreSQL  
- [`API_SQL_Analysis.ipynb`](./notebooks/API_SQL_Analysis.ipynb): Tags posts by topic, ranks themes by score, comments, and era  
- [`Web_Scrape_SQL_Analysis.ipynb`](./notebooks/Web_Scrape_SQL_Analysis.ipynb): Parses salary, tags seniority and role type, calculates heat index and salary growth

## Future Improvements

- Add NLP sentiment analysis using VADER or TextBlob  
- Visualize time-series shifts in Reddit engagement using Looker or Tableau  

