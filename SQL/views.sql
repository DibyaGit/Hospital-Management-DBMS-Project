-- HOSPITAL MANAGEMENT SYSTEM VIEWS & INDEXES
-- Creating permanent shortcuts and fast lookups

USE HospitalManagementDB;
GO

-- 1. Create Patient Appointments View
CREATE OR ALTER VIEW vw_PatientAppointments AS
SELECT 
    Patients.FirstName AS PatientFirst, 
    Patients.LastName AS PatientLast, 
    Doctors.FirstName AS DoctorFirst, 
    Doctors.Specialization,
    Appointments.AppointmentDate,
    Appointments.Status
FROM Appointments
INNER JOIN Patients 
    ON Appointments.PatientID = Patients.PatientID
INNER JOIN Doctors 
    ON Appointments.DoctorID = Doctors.DoctorID;
GO

-- 2. Create Last Name Index for fast searching
CREATE INDEX IX_Patients_LastName
ON Patients (LastName);
GO