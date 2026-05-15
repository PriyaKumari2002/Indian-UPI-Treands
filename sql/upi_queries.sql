
-- Query 1: Total Volume and Value by Year
SELECT Year, 
       ROUND(SUM(Volume_Cr), 0) as Total_Volume_Cr,
       ROUND(SUM(Value_LakhCr), 2) as Total_Value_LakhCr
FROM upi_transactions
GROUP BY Year
ORDER BY Year;

-- Query 2: Best Month by Year
SELECT Year, Month, MAX(Volume_Cr) as Peak_Volume
FROM upi_transactions
GROUP BY Year
ORDER BY Year;

-- Query 3: YoY Growth using Window Function
SELECT Year,
       ROUND(SUM(Volume_Cr), 0) as Total_Volume,
       ROUND(SUM(Volume_Cr) * 100.0 / LAG(SUM(Volume_Cr)) OVER (ORDER BY Year) - 100, 1) as YoY_Growth_Pct
FROM upi_transactions
GROUP BY Year
ORDER BY Year;

-- Query 4: Months Above Average Volume
SELECT Month, Year, Volume_Cr
FROM upi_transactions
WHERE Volume_Cr > (SELECT AVG(Volume_Cr) FROM upi_transactions)
ORDER BY Volume_Cr DESC;

-- Query 5: Seasonality by Month
SELECT Month,
       ROUND(AVG(Volume_Cr), 0) as Avg_Volume,
       COUNT(*) as Years_Present
FROM upi_transactions
GROUP BY Month
ORDER BY Avg_Volume DESC;

-- Query 6: Rolling 3 Month Average
SELECT Month, Year, Volume_Cr,
       ROUND(AVG(Volume_Cr) OVER (ORDER BY Year, Month ROWS BETWEEN 2 PRECEDING AND CURRENT ROW), 0) as Rolling_3M_Avg
FROM upi_transactions
ORDER BY Year, Month;
