-- Zomato Restaurant Survival Analysis
-- SQL Business Analysis
-- Dataset: Zomato Bangalore (51,717 Records)
-- Tool: SQLite (DB Browser for SQLite)
-- Author: Poovizhi A

---

## -- 1. RESTAURANT TYPE ANALYSIS

-- Business Question:
-- Which restaurant types are most common and which receive the highest ratings?

SELECT rest_type,
COUNT(*) AS restaurant_count,
ROUND(AVG(rating),2) AS avg_rating,
SUM(votes) AS total_votes
FROM zomato
WHERE rating IS NOT NULL
GROUP BY rest_type
ORDER BY restaurant_count DESC
LIMIT 10;

-- Finding:
-- Quick Bites dominated with 19,132 restaurants.
-- Casual Dining followed with 10,330 restaurants.

SELECT rest_type,
COUNT(*) AS restaurant_count,
SUM(votes) AS total_votes,
ROUND(AVG(rating),2) AS avg_rating
FROM zomato
WHERE rating IS NOT NULL
GROUP BY rest_type
HAVING COUNT(*) >= 100
ORDER BY avg_rating DESC;

-- Finding:
-- Microbrewery & Casual Dining achieved the highest average rating of 4.37.
-- Premium dining formats consistently outperformed Quick Bites in customer ratings.

---

## -- 2. ONLINE ORDER ANALYSIS

-- Business Question:
-- Do restaurants accepting online orders receive higher ratings?

SELECT online_order,
COUNT(*) AS restaurant_count,
SUM(votes) AS total_votes,
ROUND(AVG(rating),2) AS avg_rating
FROM zomato
WHERE rating IS NOT NULL
GROUP BY online_order;

-- Finding:
-- Restaurants offering online ordering achieved an average rating of 3.72.
-- Restaurants without online ordering averaged 3.66.
-- Online-order restaurants generated 9.34 million votes compared to 5.31 million votes.

---

## -- 3. CUISINE ANALYSIS

-- Business Question:
-- Which cuisines are most popular and receive the highest engagement?

SELECT cuisines,
COUNT(*) AS restaurant_count,
SUM(votes) AS total_votes,
ROUND(AVG(votes),0) AS avg_votes_per_restaurant,
ROUND(AVG(rating),2) AS avg_rating
FROM zomato
WHERE rating IS NOT NULL
GROUP BY cuisines
HAVING COUNT(*) >= 30
ORDER BY avg_votes_per_restaurant DESC;

-- Finding:
-- North Indian was the most common cuisine with 2,158 restaurants.
-- Cafe, American, Burger & Steak achieved a rating of 4.60 and averaged 7,001 votes per restaurant.

---

## -- 4. LOCATION ANALYSIS

-- Business Question:
-- Which locations perform best in terms of restaurant density, engagement and ratings?

SELECT "listed_in(city)",
COUNT(*) AS restaurant_count,
SUM(votes) AS total_votes
FROM zomato
GROUP BY "listed_in(city)"
ORDER BY restaurant_count DESC;

-- Finding:
-- BTM recorded the highest restaurant concentration with 2,610 restaurants.

SELECT "listed_in(city)",
COUNT(*) AS restaurant_count,
SUM(votes) AS total_votes,
ROUND(AVG(rating),2) AS avg_rating
FROM zomato
WHERE rating IS NOT NULL
GROUP BY "listed_in(city)"
HAVING COUNT(*) >= 100
ORDER BY avg_rating DESC, total_votes DESC;

-- Finding:
-- MG Road, Church Street and Brigade Road recorded the highest average ratings (3.80).

---

## -- 5. COST VS RATING ANALYSIS

-- Business Question:
-- Does restaurant pricing influence customer ratings?

SELECT
ROUND("approx_cost(for two people)",-2) AS cost_bucket,
COUNT(*) AS restaurant_count,
ROUND(AVG(rating),2) AS avg_rating
FROM zomato
WHERE rating IS NOT NULL
AND "approx_cost(for two people)" IS NOT NULL
GROUP BY cost_bucket
HAVING COUNT(*) >= 50
ORDER BY cost_bucket;

-- Finding:
-- Restaurants priced between ₹100-₹300 averaged around 3.56-3.57.
-- Ratings increased noticeably beyond the ₹600-₹700 range.
-- Restaurants priced above ₹1,100 averaged approximately 4.05.

---

## -- 6. MARKET SATURATION ANALYSIS

-- Business Question:
-- Which locations appear oversaturated?

SELECT "listed_in(city)",
COUNT(*) AS restaurant_count,
ROUND(AVG(rating),2) AS avg_rating
FROM zomato
WHERE rating IS NOT NULL
GROUP BY "listed_in(city)"
HAVING COUNT(*) >= 500
ORDER BY restaurant_count DESC, avg_rating ASC;

-- Finding:
-- JP Nagar (1,649 restaurants, 3.63 rating)
-- Jayanagar (1,928 restaurants, 3.69 rating)
-- These areas showed signs of market saturation due to high restaurant density and relatively lower ratings.

---

## -- 7. BUSINESS MODEL ANALYSIS

-- Business Question:
-- Which combination of online ordering and table booking achieves the highest ratings?

SELECT online_order,
book_table,
COUNT(*) AS restaurant_count,
ROUND(AVG(rating),2) AS avg_rating
FROM zomato
WHERE rating IS NOT NULL
GROUP BY online_order, book_table
ORDER BY avg_rating DESC;

-- Finding:
-- Table Booking = Yes and Online Order = No achieved the highest rating of 4.16.
-- Restaurants without both services recorded the lowest rating of 3.55.
-- Table booking showed a stronger relationship with ratings than online ordering.

---

## -- PROJECT SUMMARY

-- Records Analyzed: 51,717
-- SQL Concepts Used:
-- SELECT, WHERE, GROUP BY, HAVING,
-- ORDER BY, COUNT(), AVG(), SUM(), ROUND(), LIMIT

-- Key Insight:
-- Premium dining experiences, table booking availability,
-- and higher price ranges were associated with stronger
-- customer ratings and engagement across Bangalore restaurants.
