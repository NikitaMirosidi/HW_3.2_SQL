create view `costs` as
select homework_3.`dev+projects`.project_id, homework_3.projects.`name`, sum(homework_3.developers.salary) as sum
from homework_3.`dev+projects`, homework_3.projects, homework_3.developers
where homework_3.`dev+projects`.project_id = homework_3.projects.id
and homework_3.`dev+projects`.developer_id = homework_3.developers.id
and homework_3.developers.id in (select developer_id from homework_3.`dev+projects` where project_id = homework_3.projects.id)
group by homework_3.`dev+projects`.project_id;

select project_id, `name`, max(sum) from homework_3.costs;