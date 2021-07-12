SELECT SUM(`salary`) AS `java developers sum salary`
FROM `homework_3`.`developers`
WHERE `id` IN (
	SELECT `developer_id`
	FROM `homework_3`.`dev+skills`
	WHERE `skill_id` IN (
		SELECT `id`
		FROM `homework_3`.`skills`
		WHERE `name` = 'Java'));