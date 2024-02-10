-- get total overdue bills for patients, and the average per patient, along with total patients.
SELECT SUM(overdue_bills), AVG(overdue_bills), COUNT(*) FROM patient_finances;
