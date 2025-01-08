/*
Last Five Records of Dataset
Amazon
Visa


Find the last five records of the dataset.

Table: worker
department:text
first_name:text
joining_date:date
last_name:text
salary:bigint
worker_id:bigint

*/

SELECT * FROM worker
ORDER BY worker_id DESC LIMIT 5;
