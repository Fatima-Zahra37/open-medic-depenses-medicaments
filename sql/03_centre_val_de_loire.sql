SELECT annee,
       ROUND(SUM(REM) / 1e6, 1) AS rem_millions,
       ROUND(100.0 * SUM(CASE WHEN tranche_age = '60 ans et plus' THEN REM ELSE 0 END)
             / SUM(REM), 1) AS part_60_ans_et_plus
FROM df
WHERE region = 'Centre-Val de Loire'
GROUP BY annee
ORDER BY annee
