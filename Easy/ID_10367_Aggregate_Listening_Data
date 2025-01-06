/*
Interview Question Date: December 2023
Company_Name: SPOTIFY

QUESTION:
You're tasked with analyzing a Spotify-like dataset that captures user listening habits.
For each user, calculate the total listening time and the count of unique songs they've listened to. 
In the database duration values are displayed in seconds. Round the total listening duration to the nearest whole minute.
The output should contain three columns: 'user_id', 'total_listen_duration', and 'unique_song_count'.

listening_habits table

listen_duration:double precision
song_id:bigint
user_id:bigint

*/

SOLUTION:

SELECT user_id, ROUND(SUM(COALESCE(listen_duration,0))/60) as total_listen_duration, count(distinct song_id) as unique_song_count
FROM listening_habits
GROUP BY (user_id);
