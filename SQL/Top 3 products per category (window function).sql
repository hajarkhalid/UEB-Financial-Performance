WITH ProductRevenue AS (
    SELECT
        p.Category,
        p.ProductName,
        SUM(sa.Quantity * sa.UnitPrice) AS Revenue
    FROM Sales sa
    JOIN Products p ON sa.ProductID = p.ProductID
    GROUP BY p.Category, p.ProductName
)
SELECT *
FROM (
    SELECT *,
           ROW_NUMBER() OVER (PARTITION BY Category ORDER BY Revenue DESC) AS rn
    FROM ProductRevenue
) t
WHERE rn <= 3;
