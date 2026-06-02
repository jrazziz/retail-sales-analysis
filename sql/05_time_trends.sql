USE Superstore;

-- ============================================
-- QUERY: Monthly Time Trends Analysis
-- PURPOSE: Track business performance over time to identify patterns
-- KEY QUESTIONS:
--   - Are sales growing or shrinking month by month?
--   - Is profit keeping pace with sales?
--   - How fast are we shipping orders?
--   - Are there seasonal patterns (busy months, slow months)?
-- ============================================

SELECT
    -- Time period in YYYY-MM format for monthly grouping
    Year_Month,
    
    -- Count of all line items (orders) in that month
    COUNT(*) AS Number_of_Orders,
    
    -- Total revenue generated in that month
    SUM(Sales) AS Monthly_Sales,
    
    -- Total profit generated in that month
    -- Positive = profitable month, Negative = loss month
    SUM(Profit) AS Monthly_Profit,
    
    -- Average shipping time in days for that month
    -- Lower is better - indicates faster fulfillment
    AVG(Shipping_Days) AS Avg_Shipping_Days

FROM superstore

-- Group all transactions by month to summarize each period
GROUP BY Year_Month

-- Sort chronologically from oldest to newest
-- ASC shows progression over time for trend analysis
ORDER BY Year_Month ASC;