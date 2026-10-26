SELECT annee,
       ROUND(SUM(REM) / 1e6, 1)              AS rem_millions,
       SUM(BOITES)                           AS boites,
       ROUND(SUM(REM) / SUM(BOITES), 2)      AS cout_par_boite
FROM df
GROUP BY annee
ORDER BY annee
