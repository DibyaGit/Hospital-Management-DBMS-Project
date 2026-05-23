-- Query 1: View patient names alongside their appointment details
SELECT 
    Patients.FirstName, 
    Patients.LastName, 
    Appointments.AppointmentDate, 
    Appointments.Status
FROM Patients
INNER JOIN Appointments 
    ON Patients.PatientID = Appointments.PatientID;


    -- Query 2: Full appointment details with Patient and Doctor names
SELECT 
    Patients.FirstName AS PatientFirst, 
    Patients.LastName AS PatientLast, 
    Doctors.FirstName AS DoctorFirst, 
    Doctors.Specialization,
    Appointments.AppointmentDate
FROM Appointments
INNER JOIN Patients 
    ON Appointments.PatientID = Patients.PatientID
INNER JOIN Doctors 
    ON Appointments.DoctorID = Doctors.DoctorID;


    -- Query 3: Calculate the total billing amount for each payment status
SELECT 
    PaymentStatus, 
    SUM(TotalAmount) AS TotalMoney
FROM Billing
GROUP BY PaymentStatus;


-- Query 4: Show billing totals by status, but only if the total is over $200
SELECT 
    PaymentStatus, 
    SUM(TotalAmount) AS TotalMoney
FROM Billing
GROUP BY PaymentStatus
HAVING SUM(TotalAmount) > 200;


-- Query 5: List all patients in alphabetical order by Last Name
SELECT 
    PatientID, 
    FirstName, 
    LastName, 
    DateOfBirth
FROM Patients
ORDER BY LastName ASC;


-- Query 6: Find all patients whose first name starts with 'J'
SELECT 
    PatientID, 
    FirstName, 
    LastName 
FROM Patients
WHERE FirstName LIKE 'J%';


-- Query 7: Count the number of appointments for each status
SELECT 
    Status, 
    COUNT(AppointmentID) AS NumberOfAppointments
FROM Appointments
GROUP BY Status;


-- Query 8: Find the highest and lowest billing amounts
SELECT 
    MAX(TotalAmount) AS HighestBill, 
    MIN(TotalAmount) AS LowestBill
FROM Billing;


-- Query 9: Calculate the current age of every patient
SELECT 
    FirstName, 
    LastName, 
    DateOfBirth,
    DATEDIFF(YEAR, DateOfBirth, GETDATE()) AS Age
FROM Patients;


-- Query 10: Find all bills that are higher than the hospital's average bill
SELECT 
    BillID, 
    AppointmentID, 
    TotalAmount
FROM Billing
WHERE TotalAmount > (
    SELECT AVG(TotalAmount) 
    FROM Billing
);





