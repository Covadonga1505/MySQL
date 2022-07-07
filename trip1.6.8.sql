SELECT MONTHNAME(date_first) AS 'Месяц', COUNT(MONTHNAME(date_first)) AS 'Количество'
FROM trip
GROUP BY 1
ORDER BY 2 DESC, 1;