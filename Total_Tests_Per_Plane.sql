SELECT plane_no, COUNT(*) AS total_tests
FROM Testing_Event
GROUP BY plane_no;