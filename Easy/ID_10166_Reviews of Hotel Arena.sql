/*
ID 10166
Airbnb  Expedia

QUESTION:
Find how many reviews exist for each review score given to 'Hotel Arena'.
Output the hotel name ('Hotel Arena'), each review score, and the number of reviews for that score.
Ensure the results only include 'Hotel Arena.'

Table: hotel_reviews
additional_number_of_scoring:bigint
average_score:double precision
days_since_review:text
hotel_address:text
hotel_name:text
lat:double precision
lng:double precision
negative_review:text
positive_review:text
review_date:date
review_total_negative_word_counts:bigint
review_total_positive_word_counts:bigint
reviewer_nationality:text
reviewer_score:double precision
tags:text
total_number_of_reviews:bigint
total_number_of_reviews_reviewer_has_given:bigint

*/

SELECT hotel_name, reviewer_score, COUNT(*) as score_count
FROM hotel_reviews
WHERE hotel_name = 'Hotel Arena'
GROUP BY(hotel_name, reviewer_score);

