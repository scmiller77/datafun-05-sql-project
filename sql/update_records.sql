-- Update patient last name 
UPDATE patient_info
SET last_name = 'Muniz'
WHERE patient_id = 'PT245332';

-- Update patient overdue amount
UPDATE patient_finances
SET overdue_bills = 75.00
WHERE patient_id = 'PT282395';