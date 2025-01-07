/*

Admin Department Employees Beginning in April or Later
Microsoft Amazon

Find the number of employees working in the Admin department that joined in April or later.

Table: worker
department:text
first_name:text
joining_date:date
last_name:text
salary:bigint
worker_id:bigint

*/
SELECT COUNT(*) as number_of_employees
FROM worker
WHERE department = 'Admin'
AND EXTRACT(Month from joining_date) >= 4;
