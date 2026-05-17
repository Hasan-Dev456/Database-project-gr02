SELECT ssn, SUM(hours_spent) AS total_hours
FROM Testing_Event
GROUP BY ssn;