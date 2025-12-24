SELECT
    s.Region,
    YEAR(sa.Date) AS SalesYear,
    MONTH(sa.Date) AS SalesMonth,
    SUM(sa.Quantity * sa.UnitPrice) AS TotalSalesAmount
FROM Sales sa
JOIN Stores s
    ON sa.StoreID = s.StoreID
GROUP BY
    s.Region,
    YEAR(sa.Date),
    MONTH(sa.Date)
ORDER BY
    SalesYear,
    SalesMonth,
    s.Region;
