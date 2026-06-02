USE Superstore;

-- ============================================
-- QUERY: Dataset Overview and Basic Statistics
-- PURPOSE: Understand the size, scope, and financial totals of the dataset
-- ============================================

SELECT 
    -- Total number of rows (individual line items in all orders)
    COUNT(*) AS Total_Rows,
    
    -- Count of unique orders (one order can have multiple line items)
    COUNT(DISTINCT Order_ID) AS Unique_Orders,
    
    -- Count of unique customers
    COUNT(DISTINCT Customer_ID) AS Unique_Customers,
    
    -- Count of unique products sold
    COUNT(DISTINCT Product_ID) AS Unique_Products,
    
    -- Earliest order date in the dataset
    MIN(Order_Date) AS Earliest_Order,
    
    -- Latest order date in the dataset
    MAX(Order_Date) AS Latest_Order,
    
    -- Total revenue across all orders
    SUM(Sales) AS Total_Sales,
    
    -- Total profit across all orders
    SUM(Profit) AS Total_Profit

FROM superstore;