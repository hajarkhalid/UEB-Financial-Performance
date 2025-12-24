SELECT
    YEAR(Date) AS SalesYear,
    MONTH(Date) AS SalesMonth,
    SUM(Quantity * UnitPrice) AS Revenue
FROM Sales
GROUP BY YEAR(Date), MONTH(Date)
ORDER BY SalesYear, SalesMonth;
