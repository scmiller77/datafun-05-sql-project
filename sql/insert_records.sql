-- Insert authors data
INSERT INTO patient_info (patient_id, first_name, last_name, zip_code)
VALUES
    ('PT282395', 'Emily', 'Johnson', 90215),
    ('PT243876', 'Michael', 'Smith', 10421),
    ('PT245332', 'Sarah', 'Brown', 60616),
    ('PT239849', 'David', 'Williams', 33157),
    ('PT248938', 'Jennifer', 'Davis', 75401),
    ('PT258687', 'Daniel', 'Taylor', 94160),
    ('PT261784', 'Jessica', 'Martinez', 90066),
    ('PT266599', 'Christopher', 'Anderson', 20031),
    ('PT244588', 'Amanda', 'Thomas', 30365),
    ('PT223475', 'Matthew', 'Jackson', 98121);


-- Insert books data
INSERT INTO patient_finances (overdue_bills, days_overdue, patient_id)
VALUES
    ( 2578.33, 845, 'PT261784'),
    ( 1289.47, 507, 'PT245332'),
    ( 22456.89, 639, 'PT243876'),
    ( 732.12, 123, 'PT248938'),
    ( 30123.45, 276, 'PT258687'),
    ( 150.68, 925, 'PT282395'),
    ( 8765.78, 342, 'PT239849'),
    ( 4198.76, 724, 'PT244588');
