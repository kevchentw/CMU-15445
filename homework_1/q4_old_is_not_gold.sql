SELECT CAST(`premiered`/10 as CHAR(5)) || "0s" as decade, COUNT(*) as cnt
FROM `titles` 
WHERE `titles`.`premiered` is not null
GROUP BY decade
ORDER BY cnt desc;