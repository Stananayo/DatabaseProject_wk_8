-- Insert Patients Data
INSERT INTO Patients (Name, DateOfBirth, Gender, ContactNumber, Email) VALUES
('John Doe', '1985-06-15', 'Male', '08012345678', 'john.doe@example.com'),
('Jane Smith', '1990-02-10', 'Female', '08098765432', 'jane.smith@example.com'),
('Emily Clark', '1987-09-25', 'Female', '08123456789', 'emily.clark@example.com');

-- Insert Radiologists Data
INSERT INTO Radiologists (Name, Specialization, Email, Phone) VALUES
('Dr. Alex Brown', 'MRI Specialist', 'alex.brown@example.com', '08011122334'),
('Dr. Linda White', 'CT Scan Expert', 'linda.white@example.com', '08022233445');

-- Insert Imaging Studies Data
INSERT INTO ImagingStudies (PatientID, RadiologistID, StudyType, StudyDate) VALUES
(1, 1, 'MRI Brain', '2025-05-01'),
(2, 2, 'CT Chest', '2025-05-02'),
(3, 1, 'X-ray Hand', '2025-05-03');

-- Insert Reports Data
INSERT INTO Reports (StudyID, Findings, Diagnosis, ReportDate) VALUES
(1, 'Signs of swelling detected', 'Possible mild trauma', '2025-05-02'),
(2, 'Lung opacity observed', 'Suspected mild pneumonia', '2025-05-03'),
(3, 'Fracture detected in left wrist', 'Confirmed fracture', '2025-05-04');

-- Insert Appointments Data
INSERT INTO Appointments (PatientID, RadiologistID, AppointmentDate, Status) VALUES
(1, 1, '2025-05-01', 'Completed'),
(2, 2, '2025-05-02', 'Completed'),
(3, 1, '2025-05-03', 'Scheduled');


SELECT * FROM Appointments;