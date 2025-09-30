select *
from OrdersRaw

select *
from DetailsRaw

-- Agar pehle se Orders table bana ho to pehle drop kar de
IF OBJECT_ID('Orders', 'U') IS NOT NULL
    DROP TABLE Orders;

-- Ab clean table banao
SELECT 
    o.Order_ID   AS order_id,
    o.Order_Date AS order_date,
    d.Amount     AS amount
INTO Orders
FROM OrdersRaw o
LEFT JOIN DetailsRaw d
    ON o.Order_ID = d.Order_ID;

SELECT TOP 10 * FROM Orders;


EXEC sp_help Orders;

ALTER TABLE Orders
ALTER COLUMN amount FLOAT;


--Monthly Sales &Volume
SELECT 
    YEAR(order_date) AS year,
    MONTH(order_date) AS month,
    SUM(amount) AS monthly_revenue,
    COUNT(DISTINCT order_id) AS order_volume
FROM Orders
WHERE order_date IS NOT NULL AND amount IS NOT NULL
GROUP BY YEAR(order_date), MONTH(order_date)
ORDER BY year, month;


--Top 3 Month By Revenue
SELECT TOP 3
    YEAR(order_date) AS year,
    MONTH(order_date) AS month,
    SUM(amount) AS monthly_revenue,
    COUNT(DISTINCT order_id) AS order_volume
FROM Orders
WHERE order_date IS NOT NULL AND amount IS NOT NULL
GROUP BY YEAR(order_date), MONTH(order_date)
ORDER BY monthly_revenue DESC;

