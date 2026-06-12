# Zomato Restaurant Survival Analysis — Bangalore

EDA of 51,000+ Zomato Bangalore restaurants to identify what drives restaurant success

## Project Overview
This project analyzes 51,717 restaurant records from the Bangalore Zomato dataset to identify the factors associated with restaurant success. The analysis combines Excel, SQL, Python, and Power BI to uncover patterns in customer ratings, restaurant types, pricing, online ordering, customer engagement, and location performance.

## Objectives
1. Which restaurant types have the highest average ratings?
2. Do restaurants that accept online orders rate higher than those that do not?
3. Which cuisines are the most popular and highly rated?
4. Which locations have the most restaurants and the best ratings?
5. Is there a relationship between restaurant pricing and customer ratings?
6. Which areas appear oversaturated with restaurants?
7. What combination of features predicts a highly rated restaurant?

## Dataset
- Source: Kaggle — Zomato Bangalore Restaurants
- Not included in this repo. Download from Kaggle and place in data/ folder.
- Rows: 51,717 | Columns: 11

## Tools Used
- Excel – Data cleaning and preprocessing
- SQLite (DB Browser) – Business analysis and SQL querying
- Python (Pandas, Matplotlib) – Data visualization
- Power BI – Interactive dashboard creation
- Git & GitHub – Version control and project documentation

## Project Structure
- data/       → Local only, not pushed
- notebooks/  → Jupyter analysis notebooks
- dashboard/  → Power BI dashboard files
- reports/    → Reports and summaries
- sql/        → SQL queries
- visuals/    → Charts and plots

## Progress Log

### Day 1 — Data Loading & Initial Cleaning
- Loaded dataset: 51,718 rows, 17 columns
- Analyzed all columns for usability
- Checked for null values and useful data
- Cleaned Rate column using SUBSTITUTE formula to remove /5
- Handled NEW text values in Rate column using IF formula
- Dropped irrelevant columns not needed for analysis
- Set up full project folder structure

### Day 2 — Data Cleaning & SQL Analysis
- Reduced dataset to 51,717 rows, 11 columns after cleaning
- Ran 7 SQL analyses covering restaurant types, online orders, cuisines, locations, cost vs rating, market saturation, and business models
- Key finding: Table booking has stronger impact on ratings than online ordering
- Key finding: Premium restaurants (₹1,100–₹1,200) achieved 4.05 average rating

### Day 3 — Python Visualizations
- Imported cleaned dataset into Python
- Created 6 visualizations: Top Locations, Top Restaurant Types, Cost vs Rating, Online Order vs Rating, Business Model Analysis, Cuisine Engagement
- Used Pandas and Matplotlib for analysis and plotting
- Saved all charts to visuals/ folder

## Key Findings

### Restaurant Type Analysis
- Quick Bites dominated with 19,132 restaurants, followed by Casual Dining with 10,330
- Microbrewery & Casual Dining achieved average rating of 4.37 vs 3.55 for Quick Bites

### Online Order Analysis
- Restaurants with online orders achieved average rating of 3.72 vs 3.66 without
- Online-order restaurants generated 9.34 million votes vs 5.31 million without

### Cuisine Analysis
- North Indian cuisine most common with 2,158 restaurants, average rating only 3.59
- Cafe, American, Burger & Steak achieved average rating of 4.60 with 7,001 votes per restaurant

### Location Analysis
- BTM had highest restaurants (2,610), followed by Koramangala 7th Block (2,390)
- MG Road, Church Street, Brigade Road achieved highest average ratings of 3.80

### Cost vs Rating Analysis
- Budget restaurants ₹100–₹300 maintained average ratings of 3.56–3.57
- Ratings increased noticeably beyond ₹600–₹700 price range
- Restaurants at ₹1,100–₹1,200 achieved average rating of 4.05

### Market Saturation Analysis
- JP Nagar (1,649 restaurants, 3.63 rating) and Jayanagar (1,928 restaurants, 3.69 rating) showed market saturation signs

### Business Model Analysis
- Table Booking Yes + Online Order No recorded highest average rating of 4.16
- No table booking + no online order recorded lowest rating of 3.55
- Table reservation has stronger impact on ratings than online ordering

## Author
Poovizhi A — Aspiring Data Analyst