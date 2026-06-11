# Zomato Restaurant Survival Analysis — Bangalore

EDA of 51,000+ Zomato Bangalore restaurants to identify what drives restaurant success

## Dataset
- Source: Kaggle — Zomato Bangalore Restaurants
- Not included in this repo. Download from Kaggle and place in data/ folder.
- Rows: 51,718 | Columns: 17

## Project Structure
- data/       → Local only, not pushed
- notebooks/  → Jupyter analysis notebooks
- dashboard/  → Dashboard files
- reports/    → Reports and summaries
- sql/        → SQL queries
- visuals/    → Charts and plots

## Progress Log

### Day 1 — Data Loading & Initial Cleaning
- Loaded dataset: 51,718 rows, 17 columns
- Analyzed all columns for usability
- Checked for null values and useful data
- Cleaned the Rate column (had values like 1.8/5, 5/5) removed /5 using SUBSTITUTE formula
- Handled NEW text values in Rate column using IF formula
- Dropped irrelevant columns not needed for analysis
- Set up full project folder structure

### Day 2 — Data Cleaning & SQL Analysis
- Reduced dataset to 51,717 rows, 11 columns after cleaning
- Ran 7 SQL analyses covering restaurant types, online orders, cuisines, locations, cost vs rating, market saturation, and business models
- Key finding: Table booking has stronger impact on ratings than online ordering
- Key finding: Premium restaurants (₹1,100–₹1,200) achieved 4.05 average rating

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
