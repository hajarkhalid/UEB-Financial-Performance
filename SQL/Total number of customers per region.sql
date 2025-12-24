SELECT
    c.Region,
    COUNT(DISTINCT c.CustomerID) AS TotalCustomers
FROM Customers c
JOIN Sales sa ON c.CustomerID = sa.CustomerID
GROUP BY c.Region;
