/*
Salaries Differences
Interview Question Date: November 2020
Company: LinkedIn, Dropbox

QUESTION:
Calculates the difference between the highest salaries in the marketing and engineering departments. 
Output just the absolute difference in salaries.

Tables: db_employee, db_dept

db_employee table
  department_id:bigint
  first_name:text
  id:bigint
  last_name:text
  salary:bigint

db_dept table
  department:text
  id:bigint
*/

SELECT 
    ABS(MAX(CASE WHEN d.department = 'marketing' THEN salary END) -
    MAX(CASE WHEN d.department = 'engineering' THEN salary END)) as salary_difference
FROM db_employee e
JOIN db_dept d 
ON e.department_id = d.id

