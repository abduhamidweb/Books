-- get categories
select * from categories;
-- get category
select * from category;
-- categories and category joined tables
SELECT * from categories c1 LEFT JOIN category c2 on c1.cat_id = c2.cat_id;
-- categories and category joined tables whaer c1 cat_id = 1;
SELECT *
from categories c1 LEFT JOIN category c2 on c1.cat_id = c2.cat_id WHERE c1.cat_id =1;
-- get words
select * from words;
--words and category joined tables
SELECT * from category c LEFT JOIN words w on c.category_id = w.category_id;
-- words and category joined tables whaer on c.category_id = w.category_id;
SELECT * from category c LEFT JOIN words w on c.category_id = w.category_id WHERE c.category_id =1;