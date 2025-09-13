-- Schema for Patient Database Tracker

CREATE TABLE Patients (
    patient_id INTEGER PRIMARY KEY,
    first_name TEXT NOT NULL,
    last_name TEXT NOT NULL,
    date_of_birth DATE,
    phone_number TEXT
);

CREATE TABLE Clinics (
    clinic_id INTEGER PRIMARY KEY,
    clinic_name TEXT NOT NULL,
    address TEXT
);

CREATE TABLE Appointments (
    appointment_id INTEGER PRIMARY KEY,
    patient_id INTEGER,
    clinic_id INTEGER,
    appointment_date DATE,
    follow_up_needed BOOLEAN,
    FOREIGN KEY (patient_id) REFERENCES Patients(patient_id),
    FOREIGN KEY (clinic_id) REFERENCES Clinics(clinic_id)
);
