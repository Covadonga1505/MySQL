SELECT name,
	(
    SELECT name
    FROM trip
    GROUP BY name
    HAVING DATEDIFF(date_last, date_first)=MIN(DATEDIFF(date_last, date_first))
    ), city, date_first, date_last
FROM trip
WHERE DATEDIFF(date_last, date_first)=MIN(DATEDIFF(date_last, date_first));