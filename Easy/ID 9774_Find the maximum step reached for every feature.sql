/*
Find the maximum step reached for every feature

Meta
Find the maximum step reached for every feature.
Output the feature id along with its maximum step.

Table: facebook_product_features_realizations
feature_id:bigint
step_reached:bigint
timestamp:timestamp without time zone
user_id:bigint

*/

select feature_id, MAX(step_reached) as maximum_step
from facebook_product_features_realizations
GROUP BY feature_id;
