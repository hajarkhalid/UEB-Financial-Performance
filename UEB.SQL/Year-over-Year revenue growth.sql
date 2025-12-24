WITH YearlyRevenue AS (
    SELECT
        YEAR(Date) AS SalesYear,
        SUM(Quantity * UnitPrice) AS Revenue
    FROM Sales
    GROUP BY YEAR(Date)
)
SELECT
    curr.SalesYear,
    curr.Revenue,
    prev.Revenue AS LastYearRevenue,
    (curr.Revenue - prev.Revenue) * 1.0 / prev.Revenue AS YoYGrowth
FROM YearlyRevenue curr
LEFT JOIN YearlyRevenue prev
    ON curr.SalesYear = prev.SalesYear + 1;
