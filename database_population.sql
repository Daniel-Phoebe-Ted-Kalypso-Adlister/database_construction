USE adlisters;

INSERT INTO users(email, password) VALUES
('ted@anemail.com', 123456),
('phoebe@anemail.com', 789101),
('dan@anemail.com', 112131);

INSERT INTO ads(title, description, user_id) VALUES
('Couch for sale', 'Buy this couch please!', 1),
('Chess Club', 'Come play chess with us! It takes two to tango.', 3),
('Study hall', 'Let''s ace this test togther', 2),
('Roommate wanted', 'Make sure you have manners', 3),
('Kite flying', 'Weather is nice this weekend', 1);

INSERT INTO categories(name) VALUES
('For Sale'),
('Club'),
('Academic'),
('Personal'),
('Free'),
('Recreational');

INSERT INTO ad_categories(ad_id, cat_id)
VALUES (1, 2), (1, 3), (2, 4), (3, 1),
    (3, 2), (3, 3), (3, 4), (4, 2), (5, 1);
