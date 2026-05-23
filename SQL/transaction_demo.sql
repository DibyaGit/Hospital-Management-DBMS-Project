-- HOSPITAL MANAGEMENT SYSTEM TRANSACTIONS
-- Transaction Demo: Safely testing updates with Rollback

USE HospitalManagementDB;
GO

-- 1. Start the transaction (Save the game)
BEGIN TRANSACTION;

-- 2. Malicious Update
UPDATE Appointments 
SET Status = 'Cancelled';

-- 3. Show the damage
SELECT 'AFTER HACK (Oh no!)' AS Step, * FROM Appointments;

-- 4. Undo the damage!
ROLLBACK TRANSACTION;

-- 5. Show the restored data
SELECT 'AFTER ROLLBACK (Phew!)' AS Step, * FROM Appointments;