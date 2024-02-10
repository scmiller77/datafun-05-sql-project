-- Select records where patients have more than 5000 overdue
SELECT * FROM patient_finances WHERE overdue_bills > 5000.00;

-- Select patients with last name Smith
SELECT * FROM patient_info WHERE last_name = 'Smith';

-- Use distinct and combine conditions
SELECT DISTINCT patient_id FROM patient_finances WHERE overdue_bills > 5000 AND days_overdue < 300;