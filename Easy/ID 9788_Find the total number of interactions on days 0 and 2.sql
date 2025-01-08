/*
Find the total number of interactions on days 0 and 2
Meta

Find the total number of interactions on days 0 and 2.
Output the result alongside the day.

Table: facebook_user_interactions

day:bigint
user1:bigint
user2:bigint

*/
select day, SUM(user1) + sum(user2) as total_interactions
from facebook_user_interactions
WHERE day IN(0, 2)
GROUP BY day
