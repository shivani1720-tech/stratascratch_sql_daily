/*
Last Record Without LIMIT or ORDER BY

Google Amazon

Find the last record of the dataset without using LIMIT or ORDER BY
Note: The earliest records correspond to the earliest employee ID's.

Table: worker

department:text
first_name:text
joining_date:date
last_name:text
salary:bigint
worker_id:bigint

*/

select * from worker
WHERE 
worker_id = (SELECT MAX(worker_id) FROM worker)
