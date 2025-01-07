/*
Number of Workers by Department Starting in April or Later
Amazon
ID 9847

Find the number of workers by department who joined in or after April.
Output the department name along with the corresponding number of workers.
Sort records based on the number of workers in descending order.

Table: worker
department:text
first_name:text
joining_date:date
last_name:text
salary:bigint
worker_id:bigint

*/

SELECT department, COUNT(*) as no_of_worker
FROM worker
WHERE EXTRACT(MONTH FROM joining_date) >= 4
GROUP BY department
ORDER BY no_of_worker DESC;
