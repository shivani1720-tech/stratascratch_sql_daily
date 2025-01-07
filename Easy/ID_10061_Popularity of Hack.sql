/*

ID 10061
Meta

Meta/Facebook has developed a new programing language called Hack.To measure the popularity of Hack they ran a survey with their employees. The survey included data on previous programing familiarity as well as the number of years of experience, age, gender and most importantly satisfaction with Hack. Due to an error location data was not collected, but your supervisor demands a report showing average popularity of Hack by office location. Luckily the user IDs of employees completing the surveys were stored.
Based on the above, find the average popularity of the Hack per office location.
Output the location along with the average popularity.

facebook_employees table
age:bigint
gender:text
id:bigint
is_senior:boolean
location:text

facebook_hack_survey table
age:bigint
employee_id:bigint
gender:text
popularity:bigint

*/

SELECT location, AVG(fh.popularity) as average_score
FROM facebook_hack_survey fh
JOIN facebook_employees fe
ON fh.employee_id = fe.id
GROUP BY(fe.location);
