
SELECT `titles`.`primary_title` FROM `crew` as crew1, `crew` as crew2, `titles`
WHERE `crew1`.`person_id` in (SELECT `people`.`person_id` from `people` WHERE (`people`.`name`="Mark Hamill" and `people`.`born`=1951))
AND `crew2`.`person_id` in (SELECT `people`.`person_id` from `people` WHERE (`people`.`name`="George Lucas" and `people`.`born`=1944))
AND `crew1`.`title_id`=`crew2`.`title_id`
AND `titles`.`title_id`=`crew1`.`title_id`
AND `titles`.`type`="movie"
ORDER BY `titles`.`primary_title`;