SELECT
    sa.CustomerID,
    SUM(sa.Quantity * sa.UnitPrice) AS CustomerLifetimeValue
FROM Sales sa
GROUP BY sa.CustomerID;
