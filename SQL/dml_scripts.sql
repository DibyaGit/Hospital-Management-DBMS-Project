-- HOSPITAL MANAGEMENT SYSTEM DML SCRIPTS
-- Inserting sample data into the tables

USE HospitalManagementDB;
GO

-- 1. Insert Sample Patients
INSERT INTO Patients (FirstName, LastName, DateOfBirth)
VALUES 
('John', 'Doe', '1980-05-15'),
('Jane', 'Smith', '1992-08-20'),
('Michael', 'Johnson', '1975-11-05');

-- 2. Insert Sample Doctors
INSERT INTO Doctors (FirstName, LastName, Specialization)
VALUES 
('Sarah', 'Jenkins', 'Cardiology'),
('David', 'Chen', 'Pediatrics'),
('Emily', 'Carter', 'Orthopedics');

-- 3. Insert Sample Appointments
INSERT INTO Appointments (PatientID, DoctorID, AppointmentDate, Status)
VALUES 
(1, 2, '2026-06-01 10:00:00', 'Completed'),
(2, 1, '2026-06-02 14:30:00', 'Scheduled'),
(3, 3, '2026-06-03 09:15:00', 'Scheduled');

-- 4. Insert Sample Treatments
INSERT INTO Treatments (AppointmentID, TreatmentDetails, Prescription)
VALUES 
(1, 'Routine checkup, blood pressure normal', 'None'),
(2, 'Patient reported chest pain, ran ECG', 'Aspirin 81mg'),
(3, 'Sprained ankle assessment, applied ice', 'Ibuprofen 400mg');

-- 5. Insert Sample Billing
INSERT INTO Billing (AppointmentID, TotalAmount)
VALUES 
(1, 150.00),
(2, 250.50),
(3, 100.00);

-- 6. Update a Bill Status
UPDATE Billing
SET PaymentStatus = 'Paid'
WHERE BillID = 1;