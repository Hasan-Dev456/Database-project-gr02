SELECT ssn, COUNT(*) AS tests_performed
FROM Testing_Event
GROUP BY ssn
ORDER BY tests_performed DESC;
