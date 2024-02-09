-- Start by deleting any tables if the exist already
-- DROP tables in reverse order of creation 
-- DROP dependent tables (with foreign keys) first

DROP TABLE IF EXISTS patient_finances;
DROP TABLE IF EXISTS patient_info;

-- Create the patient_info table 

CREATE TABLE patient_info (
    patient_id TEXT PRIMARY KEY,
    first_name TEXT,
    last_name TEXT,
    zip_code INTEGER
);

-- Create the outstanding_bills table


CREATE TABLE patient_finances (
    overdue_bills float PRIMARY KEY,
    days_overdue INTEGER,
    patient_id TEXT,
    FOREIGN KEY (patient_id) REFERENCES patient_info(patient_id)
);