Sales Trend Analysis Using PostgreSQL

 Task 6 – Elevate Labs

This project analyzes monthly sales trends using PostgreSQL aggregation functions.

 Objective

Analyze:

* Monthly revenue
* Monthly order volume
* Sales trends over time

 Dataset

The `online_sales` table contains:

 `order_id` – Unique order ID
 `order_date` – Date of the order
 `amount` – Order amount
 `product_id` – Product ID

SQL Concepts Used

`EXTRACT()` – Extract year and month from order dates
`GROUP BY` – Group sales by year and month
 `SUM()` – Calculate monthly revenue
 `COUNT(DISTINCT order_id)` – Calculate order volume
 `ORDER BY` – Sort results chronologically
 `WHERE` – Filter results for a specific time period

Files

`sales_trend_analysis.sql` – SQL script containing table creation, sample data, and analysis queries
`sales_trend_results.csv` – Results table generated from the analysis

 Tools Used

PostgreSQL
DataGrip

 Outcome
 The analysis demonstrates how SQL aggregation and date functions can be used to identify monthly revenue and order-volume trends.

