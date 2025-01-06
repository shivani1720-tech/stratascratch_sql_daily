/*
Weekly Orders Report
Interview Question Date: December 2023
Company Name: Amazon
*/

/*
QUESTION:
For each week, find the total quantity across all orders of that week. Include only the orders that are from the first quarter of 2023.
The output should contain 'week' and 'quantity'.

Table: orders_analysis

quantity:bigint
stage_of_order:text
week:date
*/

SELECT week, SUM(quantity) as quantity
FROM orders_analysis
WHERE week BETWEEN '2023-01-01' AND '2023-03-31'
GROUP BY week;

or 
SELECT week, SUM(quantity) as quantity
FROM order_analysis
GROUP BY week
HAVING QUARTER(week) = 1;





