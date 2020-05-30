SELECT `titles`.`primary_title`, COUNT(1) as cnt
FROM `titles`, `akas`
WHERE `titles`.`title_id`=`akas`.`title_id`
GROUP BY `akas`.`title_id`
ORDER BY cnt DESC LIMIT 10;