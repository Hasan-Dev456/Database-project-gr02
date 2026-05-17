SELECT ssn, COUNT(model_no) AS expertise_count
FROM Technician_Expertise
GROUP BY ssn
ORDER BY expertise_count DESC;