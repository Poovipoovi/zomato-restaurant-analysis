-- Zomato Restaurant Survival Analysis
-- SQL Queries for Business Analysis
-- Dataset: Zomato Bangalore (51,717 records, 11 columns)
-- Tool: SQLite via DB Browser
-- Author: Poovizhi A


-- Restaurant Type Analysis

select rest_type, count(*) as total_restaurants,
round(avg(rate), 2) as avg_rating, sum(votes) as total_votes
from zomato_clean
group by rest_type
order by total_restaurants desc
limit 10;

-- Quick Bites dominated with 19,132 restaurants but averaged only 3.55
-- Microbrewery and Casual Dining achieved the highest average rating of 4.37


-- Online Order Analysis

select online_order, count(*) as total_restaurants,
round(avg(rate), 2) as avg_rating, sum(votes) as total_votes
from zomato_clean
group by online_order;

-- Restaurants with online ordering averaged 3.72 with 9.34 million votes
-- Restaurants without online ordering averaged 3.66 with 5.31 million votes


-- Cuisine Analysis

select cuisines, count(*) as restaurant_count,
round(avg(rate), 2) as avg_rating, sum(votes) as total_votes,
round(avg(votes), 0) as avg_votes_per_restaurant
from zomato_clean
where cuisines is not null
group by cuisines
having count(*) > 50
order by total_votes desc
limit 15;

-- North Indian was most common with 2,158 restaurants but averaged only 3.59
-- Cafe, American, Burger and Steak averaged 4.60 with 7,001 votes per restaurant


-- Location Analysis

select location, count(*) as num_restaurants,
round(avg(rate), 2) as avg_rating, sum(votes) as total_votes
from zomato_clean
group by location
order by num_restaurants desc
limit 20;

-- BTM had the highest count with 2,610 restaurants
-- MG Road, Church Street and Brigade Road recorded highest average ratings at 3.80


-- Cost vs Rating Analysis

select
case
when approx_cost < 300 then 'Budget under 300'
when approx_cost < 600 then 'Mid-range 300 to 600'
when approx_cost < 1000 then 'Premium 600 to 1000'
else 'Luxury 1000 and above'
end as price_segment,
count(*) as total_restaurants,
round(avg(rate), 2) as avg_rating
from zomato_clean
where approx_cost is not null
group by price_segment
order by avg_rating desc;

-- Budget restaurants averaged 3.56 to 3.57
-- Restaurants above 1,100 achieved an average rating of 4.05


-- Market Saturation Analysis

select location, count(*) as num_restaurants,
round(avg(rate), 2) as avg_rating,
case
when count(*) > 1500 and avg(rate) < 3.70 then 'Oversaturated'
when count(*) > 1500 and avg(rate) >= 3.70 then 'High Demand'
when count(*) < 500 and avg(rate) >= 3.80 then 'Hidden Gem'
else 'Balanced'
end as market_status
from zomato_clean
group by location
having count(*) > 100
order by num_restaurants desc;

-- JP Nagar with 1,649 restaurants and 3.63 rating marked as Oversaturated
-- Jayanagar with 1,928 restaurants and 3.69 rating marked as Oversaturated


-- Business Model Analysis

select online_order, book_table, count(*) as total_restaurants,
round(avg(rate), 2) as avg_rating
from zomato_clean
group by online_order, book_table
order by avg_rating desc;

-- Table booking with no online ordering recorded the highest average rating of 4.16
-- No table booking and no online ordering recorded the lowest average rating of 3.55