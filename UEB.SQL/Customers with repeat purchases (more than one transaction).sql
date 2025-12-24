SELECT
    c.CustomerID,
    COUNT(sa.SaleID) AS TransactionCount
FROM Sales sa
JOIN Customers c
    ON sa.CustomerID = c.CustomerID
GROUP BY c.CustomerID
HAVING COUNT(sa.SaleID) > 1;
