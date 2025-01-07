/*
ID 10128
Company: Google, Netflix

Count the number of movies for which Abigail Breslin was nominated for an Oscar.

Table: oscar_nominees
category:text
id:bigint
movie:text
nominee:text
winner:boolean
year:bigint
*/

SELECT COUNT(*) FROM oscar_nominees
WHERE nominee = 'Abigail Breslin' 
