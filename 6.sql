SELECT AVG(`salary`) AS `avarage salary`
FROM `homework_3`.`developers`
WHERE `id` IN (
	SELECT `developer_id`
	FROM `homework_3`.`dev+projects`
	WHERE `project_id` = (
		SELECT `id`
		FROM `homework_3`.`projects`
		WHERE `cost` = (
			SELECT MIN(`cost`)
			FROM `homework_3`.`projects`)));