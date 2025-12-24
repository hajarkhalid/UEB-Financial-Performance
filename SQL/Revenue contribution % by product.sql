WITH TotalRevenue AS (
    SELECT SUM(Quantity * UnitPrice) AS TotalRev FROM Sales
)
SELECT
    p.ProductName,
    SUM(sa.Quantity * sa.UnitPrice) AS ProductRevenue,
    SUM(sa.Quantity * sa.UnitPrice) * 100.0 / tr.TotalRev AS RevenuePercentage
FROM Sales sa
JOIN Products p ON sa.ProductID = p.ProductID
CROSS JOIN TotalRevenue tr
GROUP BY p.ProductName, tr.TotalRev
ORDER BY RevenuePercentage DESC;
