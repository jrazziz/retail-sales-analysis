USE Superstore;

-- ============================================
-- QUERY: Discount Impact Analysis
-- PURPOSE: Measure how discount levels affect profitability
-- KEY QUESTION: At what point do discounts destroy profit?
-- ============================================

SELECT 
    -- Categorize each order into a discount tier based on discount percentage
    CASE 
        WHEN Discount = 0.0 THEN 'No Discount'
        WHEN Discount <= 0.2 THEN 'Low'
        WHEN Discount <= 0.5 THEN 'Medium'
        ELSE 'High'
    END AS Discount_Tier,
    
    -- Count how many orders fall into each discount tier
    COUNT(*) AS Number_of_Orders,
    
    -- Average sales value per order within each tier
    AVG(Sales) AS Average_Sales,
    
    -- Average profit per order within each tier
    -- Positive = profitable, Negative = losing money
    AVG(Profit) AS Average_Profit,
    
    -- Overall profit margin for each tier
    -- Formula: Total Profit / Total Sales
    -- Shows true margin, not average of individual margins
    (SUM(Profit) / SUM(Sales)) AS Profit_Margin

FROM superstore

-- Group all orders by their discount tier to summarize each group
GROUP BY 
    CASE 
        WHEN Discount = 0.0 THEN 'No Discount'
        WHEN Discount <= 0.2 THEN 'Low'
        WHEN Discount <= 0.5 THEN 'Medium'
        ELSE 'High'
    END

-- Sort from highest margin to lowest margin
-- Best performing tiers appear first, loss-making tiers at bottom
ORDER BY Profit_Margin DESC;