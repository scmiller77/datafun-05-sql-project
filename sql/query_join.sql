-- Inner join between patient_info and patient_finances tables
SELECT patient_info.first_name, patient_info.last_name, patient_finances.overdue_bills, patient_finances.days_overdue
FROM patient_info
INNER JOIN patient_finances ON patient_info.patient_id = patient_finances.patient_id;