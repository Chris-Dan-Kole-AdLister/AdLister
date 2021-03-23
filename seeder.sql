USE adlister_db;
INSERT INTO users (id, username, email, password)
VALUES
(1, 'testuser1', 'testuser1@gmail.com', 'testpassword1'),
(2, 'testuser2', 'testuser2@gmail.com', 'testpassword2'),
(3, 'testuser3', 'testuser3@gmail.com', 'testpassword3'),
(4, 'testuser4', 'testuser4@gmail.com', 'testpassword4'),
(5, 'testuser5', 'testuser5@gmail.com', 'testpassword5');
INSERT INTO categories (id, name)
VALUES
(1, 'Fruit'),
(2, 'Vegetables'),
(3, 'Dairy'),
(4, 'Baked Goods'),
(5, 'Jams, Jellies, and Preserves'),
(6, 'Ferments'),
(7, 'Other');
INSERT INTO ads (id, user_id, title, price, description)
VALUES
(1, 1, 'Tomatoes', 5.00, 'Are they fruits? Are they vegetables? I put their category as both just in case.'),
(2, 5, 'CHEESE', 1.00, 'I HAVE A LOT OF CHEESE. SORT OF LIKE ANDREW JACKSON WHO HAD A GIANT WHEEL OF CHEESE IN THE LOBBY OF THE WHITE HOUSE FOR ANYONE TO EAT. PLEASE TAKE SOME. I''M LACTOSE INTOLERANT.'),
(3, 1, 'Some kind of root vegetable?', 0.99, 'I honestly don''t know what this is. I found it growing in my garden. I think it''s edible probably.'),
(4, 2, 'Pickled marmalade', 59.00, 'It''s like regular marmalade, but I fermented it.'),
(5, 3, 'Muffins', 2.00, 'They have blueberries in them.'),
(6, 4, 'Milk', 3.50, 'Milk, fresh from the cow. Not pasteurized- as the Lord intended.');
INSERT INTO ad_categories (id, ad_id, category_id)
VALUES
(1, 1, 1),
(2, 1, 2),
(3, 2, 3),
(4, 3, 7),
(5, 4, 5),
(6, 4, 6),
(7, 5, 4),
(8, 6, 3);