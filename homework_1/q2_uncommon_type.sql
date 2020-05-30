SELECT `type`, `primary_title`, `runtime_minutes` FROM 
    (SELECT `type`, `primary_title`, `runtime_minutes`,
        RANK() OVER (partition by `type` order by `runtime_minutes` desc) as myrank
    FROM titles ORDER BY `primary_title` ASC) as rank_result
WHERE rank_result.myrank == 1 ORDER BY rank_result.`type` ASC;