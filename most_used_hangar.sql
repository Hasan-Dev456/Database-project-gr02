SELECT hangar_no, COUNT(*) AS usage_count
FROM Parking
GROUP BY hangar_no
ORDER BY usage_count DESC;
