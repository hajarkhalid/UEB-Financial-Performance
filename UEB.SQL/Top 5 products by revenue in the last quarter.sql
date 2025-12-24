SELECT TOP 5
    p.ProductName,
    SUM(sa.Quantity * sa.UnitPrice) AS Revenue
FROM Sales sa
JOIN Products p
    ON sa.ProductID = p.ProductID
WHERE sa.Date >= DATEADD(QUARTER, DATEDIFF(QUARTER, 0, GETDATE()) - 1, 0)
  AND sa.Date <  DATEADD(QUARTER, DATEDIFF(QUARTER, 0, GETDATE()), 0)
GROUP BY p.ProductName
ORDER BY Revenue DESC;
