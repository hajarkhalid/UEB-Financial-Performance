SELECT
    p.Category,
    SUM(sa.Quantity * sa.UnitPrice) AS TotalRevenue
FROM Sales sa
JOIN Products p ON sa.ProductID = p.ProductID
GROUP BY p.Category
ORDER BY TotalRevenue DESC;
