Task 6: Sales Trend Analysis
🎯 Objective

Analyze monthly revenue and order volume from the Orders table created in SQL Server Management Studio (SSMS).

🛠 Tools Used

Microsoft SQL Server Management Studio (SSMS)

Database: Task6

Tables: OrdersRaw, DetailsRaw, and final Orders

📑 Steps Performed

Dropped old Orders table if it existed.

Created a clean Orders table by joining OrdersRaw and DetailsRaw.

Checked table structure using sp_help.

Changed amount column datatype to FLOAT.

Calculated monthly revenue and order volume.

Retrieved Top 3 months by revenue.

👉 Full queries are saved in the task6.sql file.


🔑 Key Learnings

Cleaning raw data with joins.

Aggregate functions (SUM, COUNT DISTINCT).

Grouping data by YEAR() and MONTH().

Filtering NULL values.

Getting top results with ORDER BY + TOP.
