INSERT INTO Reports (StudyID, Findings, Diagnosis, ReportDate) VALUES
(1, 'MRI shows no signs of tumor. Mild vascular changes noted.', 'No significant abnormality', '2025-05-05'),
(2, 'X-ray shows mild pleural effusion. No fractures detected.', 'Early signs of pneumonia', '2025-05-06'),
(3, 'CT scan indicates moderate fatty liver. No masses identified.', 'Non-alcoholic fatty liver disease', '2025-05-07');

INSERT INTO ImagingStudies (PatientID, RadiologistID, StudyType, StudyDate) VALUES
(1, 2, 'MRI Brain Scan', '2025-05-05'),
(2, 3, 'Chest X-ray', '2025-05-06'),
(3, 1, 'CT Abdomen Scan', '2025-05-07');

INSERT INTO Radiologists (Name, Specialization, Email, Phone) VALUES
('Dr. John Smith', 'Neuroradiology', 'john.smith@example.com', '08011111111'),
('Dr. Susan Lee', 'Chest Imaging', 'susan.lee@example.com', '08022222222'),
('Dr. Ahmed Bello', 'Abdominal Imaging', 'ahmed.bello@example.com', '08033333333');

INSERT INTO Appointments (PatientID, RadiologistID, AppointmentDate, Status) VALUES
(1, 2, '2025-05-10', 'Scheduled'),
(2, 3, '2025-05-12', 'Completed'),
(3, 1, '2025-05-15', 'Cancelled');

INSERT INTO Radiographers (Name, Specialization, Email, Phone) VALUES
('Dr. Peter Obi', 'MRI Specialist', 'peter.obi@example.com', '08011112222'),
('Dr. Aisha Suleiman', 'X-ray Technologist', 'aisha.suleiman@example.com', '08022223333'),
('Dr. Emmanuel Okafor', 'CT Scan Expert', 'emmanuel.okafor@example.com', '08033334444'),
('Dr. Fatima Bello', 'Ultrasound/Sonographer', 'fatima.bello@example.com', '08044445555'),
('Dr. Samuel Ade', 'Mammography Specialist', 'samuel.ade@example.com', '08055556666'),
('Dr. Chika Eze', 'Interventional Radiology', 'chika.eze@example.com', '08066667777'),
('Mr. Musa Garba', 'Nuclear Medicine', 'musa.garba@example.com', '08077778888');

