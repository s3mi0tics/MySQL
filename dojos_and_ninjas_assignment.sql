

-- Query: Create 3 new dojos

select * from dojos;
INSERT INTO `dojos_and_ninjas_schema`.`dojos` (`name`) VALUES ('Enso');
INSERT INTO `dojos_and_ninjas_schema`.`dojos` (`name`) VALUES ('Kesh');
INSERT INTO `dojos_and_ninjas_schema`.`dojos` (`name`) VALUES ('Lee');
select * from dojos;

-- Query: Delete the 3 dojos you just created

delete from dojos where id;
select * from dojos;

-- Query: Create 3 more dojos

INSERT INTO `dojos_and_ninjas_schema`.`dojos` (`name`) VALUES ('Dojo Dharma');
INSERT INTO `dojos_and_ninjas_schema`.`dojos` (`name`) VALUES ('Dojo Dao');
INSERT INTO `dojos_and_ninjas_schema`.`dojos` (`name`) VALUES ('Dojo Dance');
select * from dojos;

-- Query: Create 3 ninjas that belong to the first dojo
SET foreign_key_checks = 0;
select * from ninjas;
INSERT INTO `dojos_and_ninjas_schema`.`ninjas` (`first_name`, `last_name`, `age`, `dojos_id`) VALUES ('Enso', 'Lee', '1', '1');
INSERT INTO `dojos_and_ninjas_schema`.`ninjas` (`first_name`, `last_name`, `age`, `dojos_id`) VALUES ('Lucca', 'Kesh', '2', '1');
INSERT INTO `dojos_and_ninjas_schema`.`ninjas` (`first_name`, `last_name`, `age`, `dojos_id`) VALUES ('Lee', 'Kauk', '65', '1');


-- Query: Create 3 ninjas that belong to the second dojo

select * from ninjas;
INSERT INTO `dojos_and_ninjas_schema`.`ninjas` (`first_name`, `last_name`, `age`, `dojos_id`) VALUES ('Michael', 'Imseis', '25', '2');
INSERT INTO `dojos_and_ninjas_schema`.`ninjas` (`first_name`, `last_name`, `age`, `dojos_id`) VALUES ('Becca', 'Pants', '26', '2');
INSERT INTO `dojos_and_ninjas_schema`.`ninjas` (`first_name`, `last_name`, `age`, `dojos_id`) VALUES ('Barb', 'Gramby', '33', '2');
INSERT INTO `dojos_and_ninjas_schema`.`ninjas` (`first_name`, `last_name`, `age`, `dojos_id`) VALUES ('Julie', 'Losh', '55', '3');
INSERT INTO `dojos_and_ninjas_schema`.`ninjas` (`first_name`, `last_name`, `age`, `dojos_id`) VALUES ('Hat', 'Bunch', '56', '3');
INSERT INTO `dojos_and_ninjas_schema`.`ninjas` (`first_name`, `last_name`, `age`, `dojos_id`) VALUES ('Guppie', 'Silverdust', '45', '3');



-- Query: Create 3 ninjas that belong to the third dojo

INSERT INTO `dojos_and_ninjas_schema`.`ninjas` (`first_name`, `last_name`, `age`, `dojos_id`) VALUES ('Julie', 'Losh', '55', '3');
INSERT INTO `dojos_and_ninjas_schema`.`ninjas` (`first_name`, `last_name`, `age`, `dojos_id`) VALUES ('Hat', 'Bunch', '56', '3');
INSERT INTO `dojos_and_ninjas_schema`.`ninjas` (`first_name`, `last_name`, `age`, `dojos_id`) VALUES ('Guppie', 'Silverdust', '45', '3');
select * from ninjas;

-- Query: Retrieve all the ninjas from the first dojo

select * from ninjas where dojos_id = 1;

-- Query: Retrieve all the ninjas from the last dojo

select * from ninjas where dojos_id = (select max(dojos_id) from ninjas);

-- Query: Retrieve the last ninja's dojo

select dojos_id from ninjas where id = (select max(id) from ninjas);

