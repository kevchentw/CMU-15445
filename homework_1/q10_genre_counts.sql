WITH RECURSIVE get_genres(genre, rest) AS (
     SELECT '' ,`titles`.`genres` || ',' FROM `titles` WHERE `titles`.`genres`!="\N"
     UNION ALL
     SELECT SUBSTR(rest, 0, INSTR(rest, ",")), SUBSTR(rest, INSTR(rest, ",")+1) FROM get_genres WHERE rest != ''
)
SELECT `genre`, COUNT(1) as cnt FROM get_genres
WHERE `genre`!="" GROUP BY `genre`
ORDER BY cnt DESC;