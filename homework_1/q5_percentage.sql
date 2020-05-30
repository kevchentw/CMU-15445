SELECT 
    CAST(`premiered`/10 as CHAR(3)) || "0s" as decade,
    ROUND(CAST(100*COUNT(1) as REAL)/CAST(cnt.cnt as float), 4) as p
FROM `titles`, (SELECT count(1) as cnt from `titles`) AS cnt
WHERE `titles`.`premiered` is NOT NULL
GROUP BY `decade` ORDER BY p desc,`decade` ASC;