/*
Find the number of views each post has

Meta
Find the number of views each post has.
Output the post id along with the number of views.
Order records by post id in ascending order.

Table: facebook_post_views
post_id:bigint
viewer_id:bigint

*/

select post_id, COUNT(*) as number_of_views 
from facebook_post_views
GROUP BY(post_id)
ORDER BY post_id 
