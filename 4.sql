ALTER TABLE `homework_3`.`projects` 
ADD COLUMN `cost` INT NOT NULL AFTER `name`;

UPDATE `homework_3`.`projects`
SET `cost` = '1000000'
WHERE (`id` = '1');

UPDATE `homework_3`.`projects`
SET `cost` = '2000000'
WHERE (`id` = '2');

UPDATE `homework_3`.`projects`
SET `cost` = '3000000'
WHERE (`id` = '3');

UPDATE `homework_3`.`projects`
SET `cost` = '4000000'
WHERE (`id` = '4');

UPDATE `homework_3`.`projects`
SET `cost` = '5000000'
WHERE (`id` = '5');

UPDATE `homework_3`.`projects`
SET `cost` = '6000000'
WHERE (`id` = '6');

UPDATE `homework_3`.`projects`
SET `cost` = '7000000'
WHERE (`id` = '7');

UPDATE `homework_3`.`projects`
SET `cost` = '8000000'
WHERE (`id` = '8');

UPDATE `homework_3`.`projects`
SET `cost` = '9000000'
WHERE (`id` = '9');

UPDATE `homework_3`.`projects`
SET `cost` = '10000000'
WHERE (`id` = '10');