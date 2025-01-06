-- User Activity Count
-- Interview Question Date: October 2024
-- Company: Meta
/*
Question
Count the unique activity types for each user, ensuring users with no activities are also included.
The output should show each user's ID and their activity type count, with zero for users who have no activities.

Tables: user_profiles, activity_log
user_profiles table
  email: text
  name: text
  signup_date: date
  user_id: bigint

activity_log table
  activity_timestamp:date
  activity_type:text
  user_id:bigint
*/
--solution

SELECT up.user_id, COUNT(al.activity_type) as activity_type_count
FROM USER_PROFILES up
JOIN ACTIVITY_LOG al ON al.user_id = up.user_id
GROUP BY up.user_id
