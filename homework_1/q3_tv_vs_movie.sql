SELECT `titles`.`type`, COUNT(1) as cnt FROM `titles`
GROUP BY `titles`.`type`
ORDER BY cnt ASC;