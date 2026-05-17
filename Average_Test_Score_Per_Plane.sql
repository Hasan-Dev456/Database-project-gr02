SELECT plane_no, AVG(score) AS avg_score
FROM Testing_Event
GROUP BY plane_no;