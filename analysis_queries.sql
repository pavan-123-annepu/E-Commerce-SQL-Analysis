-- ==========================================
-- PROJECT: E-Commerce Sales Analysis
-- AUTHOR: [Annepu pavankalyan]
-- ==========================================

-- 1. Total Revenue Calculation

SELECT SUM(Purchase_Amount_USD) AS Total_Revenue 
FROM shopping_trends;

-- 2. Average Purchase by Gender

SELECT Gender, AVG(Purchase_Amount_USD) as Avg_Spend
FROM shopping_trends
GROUP BY Gender;

-- 3. Top Selling Categories

SELECT Category, SUM(Purchase_Amount_USD) as Revenue
FROM shopping_trends
GROUP BY Category
ORDER BY Revenue DESC;

-- 4. Most Popular Payment Method

SELECT Payment_Method, COUNT(*) as usage_count
FROM shopping_trends
GROUP BY Payment_Method
ORDER BY usage_count DESC;