USE adlister;

SELECT u.email
FROM users as u
JOIN ads as a
ON a.user_id = u.id
WHERE a.ad_id = '1';


SELECT c.name
FROM categories AS c
JOIN ad_categories AS ac
    ON ac.cat_id = c.cat_id
JOIN ads as a
    ON a.ad_id = ac.ad_id
WHERE ac.ad_id = '1';


SELECT a.title AS "Title", c.name AS "Category"
FROM categories AS c
         JOIN ad_categories AS ac
              ON ac.cat_id = c.cat_id
         JOIN ads as a
              ON a.ad_id = ac.ad_id
WHERE a.ad_id = '3';


SELECT a.title
FROM ads AS a
JOIN ad_categories AS ac
    ON ac.ad_id = a.ad_id
JOIN categories AS c
    ON ac.cat_id = c.cat_id
WHERE c.name = 'Club';

SELECT *
FROM ads AS a
JOIN users AS u
    ON u.id = a.user_id
WHERE u.id = '1';
-- WHERE u.email = 'UserEmail'


