SELECT plane_no, MAX(score) AS highest_score
FROM Testing_Event
GROUP BY plane_no;