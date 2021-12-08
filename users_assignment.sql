select * from users; 
-- Query: Create 3 new users

INSERT INTO `users_schema`.`users` (`first_name`, `last_name`, `email`) VALUES ('Hal', 'Jordan', 'thegreenlatern@greenmail.com');
INSERT INTO `users_schema`.`users` (`first_name`, `last_name`, `email`) VALUES ('David', 'Banner', 'theincreadiblehulk@science.com');
INSERT INTO `users_schema`.`users` (`first_name`, `last_name`, `email`) VALUES ('Bruce', 'Wayne', 'Batman@batcave.org');

-- Query: Retrieve all the users

select * from users;

-- Query: Retrieve the first user using their email address

select * from users where email='thegreenlatern@greenmail.com'; 

-- Query: Retrieve the last user using their id

select * from users where id = (select max(id) from users);

-- Query: Change the user with id=3 so their last name is Pancakes

update users set last_name = Pancakes where id=3;

-- Query: Delete the user with id=2 from the database

delete from users where id=2;
select * from users;

-- Query: Get all the users, sorted by their first name

select * from users order by first_name;

-- BONUS Query: Get all the users, sorted by their first name in descending order

select * from users order by first_name desc;

