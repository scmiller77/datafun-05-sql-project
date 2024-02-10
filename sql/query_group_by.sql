-- Get the total overdue bills and average overdue bills grouped by patient ID
SELECT patient_id, SUM(overdue_bills), AVG(overdue_bills) 
FROM patient_finances 
GROUP BY patient_id;