SELECT ssn, COUNT(DISTINCT plane_no) AS planes_tested
FROM Testing_Event
GROUP BY ssn;