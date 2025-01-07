/*
Average Salaries
Interview Question Date: May 2019
Salesforce Glassdoor


Compare each employee's salary with the average salary of the corresponding department.
Output the department, first name, and salary of employees along with the average salary of that department.


Table: employee
address:text
age:bigint
bonus:bigint
city:text
department:text
email:text
employee_title:text
first_name:text
id:bigint
last_name:text
manager_id:bigint
salary:bigint
sex:text
target:bigint

*/

SELECT department, first_name, salary,
AVG(salary) OVER (partition by department) as avg
FROM employee;
