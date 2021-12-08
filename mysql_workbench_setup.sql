use [twitter];
select * from twitter.users;
UPDATE `twitter`.`users` SET `first_name` = 'Wardell' WHERE (`id` = '6');
INSERT INTO `twitter`.`users` (`first_name`, `last_name`, `handle`, `birthday`, `created_at`, `updated_at`) VALUES ('Michael', 'Jordan', 'GOAT', '1963-02-17', '2001-02-01 00:00:01', '1989-05-07 00:00:01');
delete from twitter.users where id=9;
