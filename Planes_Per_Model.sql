SELECT model_no, COUNT(*) AS total_planes
FROM Airplane
GROUP BY model_no;