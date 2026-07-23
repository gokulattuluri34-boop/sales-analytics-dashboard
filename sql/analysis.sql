-- 1. View all data
SELECT * FROM train;

-- 2. Total number of records
SELECT COUNT(*) AS Total_Orders
FROM train;

-- 3. Total Sales
SELECT SUM(Sales) AS Total_Sales
FROM train;

-- 4. Average Sales
SELECT AVG(Sales) AS Average_Sales
FROM train;

-- 5. Maximum Sale
SELECT MAX(Sales) AS Highest_Sale
FROM train;

-- 6. Minimum Sale
SELECT MIN(Sales) AS Lowest_Sale
FROM train;

-- 7. Total Sales by Category
SELECT Category, SUM(Sales) AS Total_Sales
FROM train
GROUP BY Category
ORDER BY Total_Sales DESC;

-- 8. Total Sales by Sub-Category
SELECT Sub_Category, SUM(Sales) AS Total_Sales
FROM train
GROUP BY Sub_Category
ORDER BY Total_Sales DESC;

-- 9. Total Sales by Region
SELECT Region, SUM(Sales) AS Total_Sales
FROM train
GROUP BY Region
ORDER BY Total_Sales DESC;

-- 10. Total Sales by State
SELECT State, SUM(Sales) AS Total_Sales
FROM train
GROUP BY State
ORDER BY Total_Sales DESC;

-- 11. Total Sales by Segment
SELECT Segment, SUM(Sales) AS Total_Sales
FROM train
GROUP BY Segment
ORDER BY Total_Sales DESC;

-- 12. Total Sales by Ship Mode
SELECT Ship_Mode, SUM(Sales) AS Total_Sales
FROM train
GROUP BY Ship_Mode
ORDER BY Total_Sales DESC;

-- 13. Top 10 Customers by Sales
SELECT Customer_Name, SUM(Sales) AS Total_Sales
FROM train
GROUP BY Customer_Name
ORDER BY Total_Sales DESC
LIMIT 10;

-- 14. Top 10 Products by Sales
SELECT Product_Name, SUM(Sales) AS Total_Sales
FROM train
GROUP BY Product_Name
ORDER BY Total_Sales DESC
LIMIT 10;

-- 15. Top 10 Cities by Sales
SELECT City, SUM(Sales) AS Total_Sales
FROM train
GROUP BY City
ORDER BY Total_Sales DESC
LIMIT 10;

-- 16. Number of Orders in Each Category
SELECT Category, COUNT(*) AS Orders
FROM train
GROUP BY Category;

-- 17. Number of Customers
SELECT COUNT(DISTINCT Customer_ID) AS Total_Customers
FROM train;

-- 18. Number of Products
SELECT COUNT(DISTINCT Product_Name) AS Total_Products
FROM train;

-- 19. Sales Greater Than 1000
SELECT *
FROM train
WHERE Sales > 1000;

-- 20. Average Sales by Region
SELECT Region, AVG(Sales) AS Average_Sales
FROM train
GROUP BY Region
ORDER BY Average_Sales DESC;