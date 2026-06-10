\# 🍽️ Zomato Restaurant Survival Analysis — Bangalore



EDA of 51,000+ Zomato Bangalore restaurants to identify what drives restaurant success



\## Dataset

\- Source: Kaggle — Zomato Bangalore Restaurants

\- Not included in this repo (too large). Download from Kaggle and place in data/ folder.

\- Rows: 51,718 | Columns: 17



\## Project Structure

\- data/       → Local only, not pushed

\- notebooks/  → Jupyter analysis notebooks

\- dashboard/  → Dashboard files

\- reports/    → Reports and summaries

\- sql/        → SQL queries

\- visuals/    → Charts and plots



\## Day 1 — Data Loading \& Initial Cleaning

\- Loaded dataset: 51,718 rows, 17 columns

\- Analyzed all columns for usability

\- Checked for null values and useful data

\- Cleaned the Rate column (had values like 1.8/5, 5/5) removed /5 using SUBSTITUTE formula

\- Handled NEW text values in Rate column using IF formula

\- Dropped irrelevant columns not needed for analysis

\- Set up full project folder structure

