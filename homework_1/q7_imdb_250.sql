WITH all_avg AS (
    SELECT SUM(`votes`*`rating`)/SUM(`votes`) as `avg`
    FROM `ratings`, `titles`
    WHERE `titles`.`title_id`=`ratings`.`title_id`
    AND `titles`.`type` = 'movie'
)
SELECT `titles`.`primary_title`,
(CAST(`ratings`.`votes` AS FLOAT)/(`ratings`.`votes`+25000.0))*`ratings`.`rating` + (25000.0/(`ratings`.`votes`+25000)) * `all_avg`.`avg` as SCORE
FROM `titles`, `ratings`, `all_avg`
WHERE `titles`.`title_id`=`ratings`.`title_id`
AND `titles`.`type` = 'movie'
ORDER BY SCORE DESC
LIMIT 250;