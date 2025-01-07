/*
Find the most profitable company in the financial sector of the entire world along with its continent
Forbes
ID 9663

Find the most profitable company from the financial sector. Output the result along with the continent.

Table: forbes_global_2010_2014

assets:double precision
company:text
continent:text
country:text
industry:text
marketvalue:double precision
profits:double precision
rank:bigint
sales:double precision
sector:text

*/

SELECT company, continent
FROM forbes_global_2010_2014
WHERE sector = 'Financials'
AND rank = 1;
