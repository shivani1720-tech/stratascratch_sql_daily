/*
ID 10176
Lyft  DoorDash

Find the last time each bike was in use. Output both the bike number and the date-timestamp of the bike's last use
(i.e., the date-time the bike was returned). Order the results by bikes that were most recently used.

Table: dc_bikeshare_q1_2012
bike_number:text
duration:text
duration_seconds:bigint
end_station:text
end_terminal:bigint
end_time:timestamp without time zone
id:bigint
rider_type:text
start_station:text
start_terminal:bigint
start_time:timestamp without time zone

*/

SELECT id, bike_number, MAX(end_time) as end_datetime
FROM dc_bikeshare_q1_2012
GROUP BY (bike_number)
ORDER BY end_datetime DESC;


