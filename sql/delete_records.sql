-- Delete overdue bills less than 100
DELETE FROM patient_finances WHERE overdue_bills < 100.00;

-- Delete records where overdue days is over 800
DELETE FROM patient_finances WHERE days_overdue > 800;