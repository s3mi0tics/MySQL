-- CRUD

-- C -> create, (INSERT, INTO)
-- INSERT INTO table_name (col_2_name, col_1_name, col_3_name) VALUES (col_2_value, col_1_value, col_3_value);
INSERT INTO addresses (street, city, state) VALUES ('321 apple', 'bannanas', 'avocado')

-- R -> read, retrieve (SELECT, FROM)
-- SELECT * FROM users_vehicles_db.users;
SELECT first_name, last_name FROM users;

-- U -> update, (UPDATE, SET)
-- UPDATE table_name SET column_1 = value_1, column_2 = value_2;
UPDATE users_vehicles_db.users SET last_name = "Thibault" WHERE u1.id = 2;

-- D -> destroy, delete, (DELETE FROM)
-- DELETE FROM tabel_name WHERE id =1

We are using the strategy of normalizing our tables and establishing relationships between them because we want to save storage space; and also because it makes our database more modular so we can create more variety of custom tables using SQL.

SET SQL_SAFE_UPDATES = 0;

