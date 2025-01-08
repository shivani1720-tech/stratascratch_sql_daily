/*
Find all actions which occurred more than once in the weblog

Meta
Find all actions which occurred more than once in the weblog.

Table: facebook_web_log
action:text
timestamp:timestamp without time zone
user_id:bigint

*/

select action, COUNT(*) AS occurences from facebook_web_log
GROUP BY(action)
