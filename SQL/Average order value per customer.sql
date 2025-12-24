SELECT
    sa.CustomerID,
    AVG(sa.Quantity * sa.UnitPrice) AS AvgOrderValue
FROM Sales sa
GROUP BY sa.CustomerID;
