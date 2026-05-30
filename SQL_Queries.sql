SHOW TABLES;
SELECT DATABASE();

#-- Sales by Region
SELECT Region,
ROUND(SUM(Sales),2) AS Total_Sales
FROM train_cleaned
GROUP BY Region
ORDER BY Total_Sales DESC;

#-- Sales by Category
SELECT Category,
ROUND(SUM(Sales),2) AS Total_Sales
FROM train_cleaned
GROUP BY Category
ORDER BY Total_Sales DESC;

#-- Top 10 Customers
SELECT `Customer Name`,
ROUND(SUM(Sales),2) AS Total_Sales
FROM train_cleaned
GROUP BY `Customer Name`
ORDER BY Total_Sales DESC
LIMIT 10;