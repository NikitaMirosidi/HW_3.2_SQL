SELECT *
FROM `homework_3`.`projects`
WHERE `cost` = (
	SELECT MIN(`cost`)
    FROM `homework_3`.`projects`);