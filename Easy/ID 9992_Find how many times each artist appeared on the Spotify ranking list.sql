/*

ID 9992
Company Name: Spotify
Find how many times each artist appeared on the Spotify ranking list
Output the artist name along with the corresponding number of occurrences.
Order records by the number of occurrences in descending order.

Table: spotify_worldwide_daily_song_ranking
artist:text
date:ate
id:bigint
position:bigint
region:text
streams:bigint
trackname:text
url:text

*/
SELECT artist, COUNT(*) as rank
FROM spotify_worldwide_daily_song_ranking
GROUP BY artist
ORDER BY rank DESC;
