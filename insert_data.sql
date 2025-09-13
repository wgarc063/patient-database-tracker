-- Mock Data for Patient Database Tracker

INSERT INTO Patients (patient_id, first_name, last_name, date_of_birth, phone_number) VALUES
(1, 'Alice', 'Johnson', '1990-04-12', '555-1234'),
(2, 'Bob', 'Smith', '1985-09-30', '555-5678'),
(3, 'Carol', 'Lee', '2000-01-22', '555-9012');

INSERT INTO Clinics (clinic_id, clinic_name, address) VALUES
(1, 'Downtown Health Center', '123 Main St'),
(2, 'Uptown Clinic', '456 Elm St');

INSERT INTO Appointments (appointment_id, patient_id, clinic_id, appointment_date, follow_up_needed) VALUES
(1, 1, 1, '2025-09-10', 1),
(2, 2, 1, '2025-09-12', 0),
(3, 3, 2, '2025-09-15', 1);
