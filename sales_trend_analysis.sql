CREATE TABLE online_sales (
    order_id INT,
    order_date DATE,
    amount DECIMAL(10,2),
    product_id INT
);

INSERT INTO online_sales (order_id, order_date, amount, product_id)
VALUES
(1, '2026-01-05', 1200.00, 101),
(2, '2026-01-15', 800.00, 102),
(3, '2026-01-20', 1500.00, 103),
(4, '2026-02-03', 900.00, 101),
(5, '2026-02-18', 2100.00, 104),
(6, '2026-02-25', 1100.00, 102),
(7, '2026-03-07', 1800.00, 103),
(8, '2026-03-16', 950.00, 101),
(9, '2026-03-28', 2500.00, 105),
(10, '2026-04-10', 1300.00, 104),
(11, '2026-04-21', 1700.00, 102),
(12, '2026-05-05', 2200.00, 105);

SELECT
    EXTRACT(YEAR FROM order_date) AS year,
    EXTRACT(MONTH FROM order_date) AS month,
    SUM(amount) AS monthly_revenue,
    COUNT(DISTINCT order_id) AS order_volume
FROM online_sales
GROUP BY
    EXTRACT(YEAR FROM order_date),
    EXTRACT(MONTH FROM order_date)
ORDER BY
    year,
    month;

SELECT
    EXTRACT(YEAR FROM order_date) AS year,
    EXTRACT(MONTH FROM order_date) AS month,
    SUM(amount) AS monthly_revenue,
    COUNT(DISTINCT order_id) AS order_volume
FROM online_sales
WHERE order_date BETWEEN '2026-01-01' AND '2026-03-31'
GROUP BY
    EXTRACT(YEAR FROM order_date),
    EXTRACT(MONTH FROM order_date)
ORDER BY
    year,
    month;
