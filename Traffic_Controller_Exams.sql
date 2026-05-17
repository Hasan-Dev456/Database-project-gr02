SELECT ssn, last_medical_exam
FROM Traffic_Controller
WHERE last_medical_exam < ADD_MONTHS(SYSDATE, -12);