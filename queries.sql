USE adlister;

SELECT u.email
FROM user as u
JOIN ad as a
WHERE a.ad_id = 'numberhere';

SELECT c.name
FROM categories AS c
JOIN ad_categories AS ac
JOIN ad as a
WHERE a.ad_id = 'numberhere';

SELECT a.title
FROM ad AS a
JOIN ad_categories AS ac
JOIN categories AS c
WHERE c.name = 'CategoryName';

SELECT a.title
FROM ad AS a
JOIN user AS u
WHERE u.id = 'UserID'
-- WHERE u.email = 'UserEmail'


