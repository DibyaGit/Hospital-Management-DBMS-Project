-- 1. Force SQL to use our specific database!
USE HospitalManagementDB;
GO

-- 2. Build our vending machine in the RIGHT hospital
CREATE OR ALTER FUNCTION fn_GetPatientTotalPaid (@PatientID INT)
RETURNS DECIMAL(10,2)
AS
BEGIN
    DECLARE @TotalPaid DECIMAL(10,2);

    SELECT @TotalPaid = SUM(Billing.TotalAmount)
    FROM Billing
    INNER JOIN Appointments ON Billing.AppointmentID = Appointments.AppointmentID
    WHERE Appointments.PatientID = @PatientID AND Billing.PaymentStatus = 'Paid';

    IF @TotalPaid IS NULL
        SET @TotalPaid = 0;

    RETURN @TotalPaid;
END;
GO

-- 3. Test it out for John Doe!
SELECT 
    FirstName, 
    LastName, 
    dbo.fn_GetPatientTotalPaid(1) AS TotalMoneyPaid
FROM Patients
WHERE PatientID = 1;