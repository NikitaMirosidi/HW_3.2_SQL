SELECT MAX(`sum`)
FROM (
	SELECT SUM(`homework_3`.`developers`.`salary`) AS `sum`
    FROM `homework_3`.`dev+projects`,
		 `homework_3`.`projects`,
         `homework_3`.`developers`
    WHERE `homework_3`.`dev+projects`.`project_id` = `homework_3`.`projects`.`id`
	AND `homework_3`.`dev+projects`.`developer_id` = `homework_3`.`developers`.`id`
	AND `homework_3`.`developers`.`id` IN (
		SELECT `developer_id`
		FROM `homework_3`.`dev+projects`
		WHERE `project_id` = `homework_3`.`projects`.`id`)
    GROUP BY `homework_3`.`dev+projects`.`project_id`)
	AS `table`;
    
SELECT MAX(`sum`)
FROM (
	SELECT `homework_3`.`dev+projects`.`project_id`,
		   `homework_3`.`dev+projects`.`developer_id`,
           `homework_3`.`developers`.`id`,
		   SUM(`homework_3`.`developers`.`salary`) AS `sum`
    FROM `homework_3`.`dev+projects`
    JOIN `homework_3`.`developers`
    ON `homework_3`.`dev+projects`.`developer_id` = `homework_3`.`developers`.`id`
    GROUP BY `homework_3`.`dev+projects`.`project_id`)
	AS `table`;