-- HOSPITAL MANAGEMENT SYSTEM TRIGGERS
-- Automated security and audit logging

USE HospitalManagementDB;
GO

-- 1. Create the Audit Log Table (if it doesn't exist)
IF NOT EXISTS (SELECT * FROM sys.tables WHERE name = 'AuditLog')
BEGIN
    CREATE TABLE AuditLog (
        LogID INT PRIMARY KEY IDENTITY(1,1),
        ActionDetails VARCHAR(255),
        LogDate DATETIME DEFAULT GETDATE()
    );
END;
GO

-- 2. Create the After Insert Trigger on Appointments
CREATE OR ALTER TRIGGER trg_AfterAppointmentInsert
ON Appointments
AFTER INSERT
AS
BEGIN
    INSERT INTO AuditLog (ActionDetails)
    SELECT 'New Appointment Created for Patient ID: ' + CAST(PatientID AS VARCHAR)
    FROM inserted;
END;
GO