WITH TARGET_TITLE AS (
    WITH TARGET_CREW AS (
        SELECT * from `people`
        WHERE `people`.`name`="Mark Hamill" and `people`.`born`=1951)
    SELECT DISTINCT(`crew`.`title_id`) FROM `crew`, TARGET_CREW
    WHERE `crew`.`person_id` = TARGET_CREW.`person_id`
)

SELECT COUNT(DISTINCT(`crew`.`person_id`)) FROM `crew`, TARGET_TITLE
WHERE `crew`.`title_id` = TARGET_TITLE.`title_id`
AND (`crew`.`category`="actor" OR `crew`.`category`="actress");