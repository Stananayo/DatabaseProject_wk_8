-- Insert Patients Data
INSERT INTO Patients (Name, DateOfBirth, Gender, ContactNumber, Email) VALUES
('John Doe', '1985-06-15', 'Male', '08012345678', 'john.doe@example.com'),
('Jane Smith', '1990-02-10', 'Female', '08098765432', 'jane.smith@example.com'),
('Emily Clark', '1987-09-25', 'Female', '08123456789', 'emily.clark@example.com'),
('Christopher Ade', '1995-04-12', 'Male', '08099998888', 'christopher.ade@example.com'),
('Esther Chukwuma', '1988-07-23', 'Female', '08077776666', 'esther.chukwuma@example.com'),
('Jonathan Eze', '1979-11-05', 'Male', '08066665555', 'jonathan.eze@example.com'),
('Sophia Martins', '1992-01-30', 'Female', '08055554444', 'sophia.martins@example.com');



-- Insert Radiologists Data
INSERT INTO Radiologists (Name, Specialization, Email, Phone) VALUES
('Dr. John Smith', 'Neuroradiology', 'john.smith@example.com', '08011111111'),
('Dr. Susan Lee', 'Chest Imaging', 'susan.lee@example.com', '08022222222'),
('Dr. Ahmed Bello', 'Abdominal Imaging', 'ahmed.bello@example.com', '08033333333'),
('Dr. Helen Okeke', 'Musculoskeletal Radiology', 'helen.okeke@example.com', '08088889999'),
('Dr. Ibrahim Lawal', 'Cardiac Imaging', 'ibrahim.lawal@example.com', '08077776666'),
('Dr. David Chukwu', 'Pediatric Radiology', 'david.chukwu@example.com', '08055554444'),
('Dr. Mary Johnson', 'Oncologic Imaging', 'mary.johnson@example.com', '08066665555');

INSERT INTO Radiographers (Name, Specialization, Email, Phone) VALUES
('Dr. Peter Obi', 'MRI Specialist', 'peter.obi@example.com', '08011112222'),
('Dr. Aisha Suleiman', 'X-ray Technician', 'aisha.suleiman@example.com', '08022223333'),
('Dr. Emmanuel Okafor', 'CT Scan Expert', 'emmanuel.okafor@example.com', '08033334444'),
('Dr. Fatima Bello', 'Ultrasound Technician', 'fatima.bello@example.com', '08044445555'),
('Dr. Samuel Ade', 'Mammography Specialist', 'samuel.ade@example.com', '08055556666'),
('Dr. Chika Eze', 'Interventional Radiology', 'chika.eze@example.com', '08066667777'),
('Dr. Musa Garba', 'Nuclear Medicine', 'musa.garba@example.com', '08077778888');
 
 
-- Insert Imaging Studies Data
INSERT INTO ImagingStudies (PatientID, RadiologistID, RadiographerID, StudyType, StudyDate) VALUES
(1, 12, 6, 'MRI Brain Scan', '2025-05-05'),
(2, 11, 5, 'Chest X-ray', '2025-05-06'),
(3, 1, 7, 'CT Abdomen Scan', '2025-05-07'),
(23, 2, 4, 'Ultrasound', '2025-05-08'),
(24, 7, 2, 'Mammography', '2025-05-09'),
(25, 5, 3, 'X-ray Spine', '2025-05-10'),
(26, 6, 1, 'Nuclear Medicine Scan', '2025-05-11');

-- Insert Reports Data
INSERT INTO Reports (StudyID, Findings, Diagnosis, ReportDate) VALUES
(1, 'MRI shows no abnormalities. Brain structure is intact.', 'Normal MRI Brain Scan', '2025-05-05'),
(2, 'Chest X-ray shows mild pleural effusion. No fractures detected.', 'Early signs of pneumonia', '2025-05-06'),
(3, 'CT Abdomen scan indicates moderate fatty liver. No masses identified.', 'Non-alcoholic fatty liver disease', '2025-05-07'),
(4, 'Ultrasound reveals gallstones but no signs of infection.', 'Cholelithiasis without cholecystitis', '2025-05-08'),
(5, 'Mammography indicates benign calcifications in breast tissue.', 'No evidence of malignancy', '2025-05-09'),
(6, 'Spinal X-ray reveals mild scoliosis with no vertebral fractures.', 'Benign scoliosis', '2025-05-10'),
(7, 'Nuclear Medicine Scan indicates normal thyroid uptake.', 'No thyroid dysfunction detected', '2025-05-11'),
(8, 'CT scan shows minimal lung nodules requiring follow-up.', 'Potential early-stage lung disease', '2025-05-12'),
(9, 'MRI Spine reveals mild disc degeneration, no herniation.', 'Degenerative disc disease', '2025-05-13'),
(10, 'Ultrasound indicates normal kidney function with no cysts or stones.', 'Healthy renal system', '2025-05-14');


-- Insert Appointments Data
INSERT INTO Appointments (PatientID, RadiologistID, AppointmentDate, Status) VALUES
(1, 2, '2025-05-10', 'Scheduled'),
(2, 1, '2025-05-12', 'Scheduled'),
(3, 5, '2025-05-15', 'Scheduled'),
(23, 6, '2025-05-18', 'Scheduled'),
(24, 7, '2025-05-20', 'Scheduled'),
(25, 11, '2025-05-22', 'Scheduled'),
(26, 12, '2025-05-25', 'Scheduled');


SELECT * FROM Appointments;