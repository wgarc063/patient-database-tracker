-- Example Queries

-- Find all patients who need a follow-up
SELECT p.first_name, p.last_name, a.appointment_date
FROM Patients p
JOIN Appointments a ON p.patient_id = a.patient_id
WHERE a.follow_up_needed = 1;

-- Count appointments per clinic
SELECT c.clinic_name, COUNT(a.appointment_id) AS total_appointments
FROM Clinics c
JOIN Appointments a ON c.clinic_id = a.clinic_id
GROUP BY c.clinic_name;
