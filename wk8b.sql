-- Create Patients Table
CREATE TABLE Patients (
    PatientID INT PRIMARY KEY AUTO_INCREMENT,
    Name VARCHAR(255) NOT NULL,
    DateOfBirth DATE NOT NULL,
    Gender ENUM('Male', 'Female', 'Other'),
    ContactNumber VARCHAR(15) UNIQUE NOT NULL,
    Email VARCHAR(255) UNIQUE
);

- Create Radiographers Table
CREATE TABLE Radiographers (
    RadiographerID INT PRIMARY KEY AUTO_INCREMENT,
    Name VARCHAR(255) NOT NULL,
    Specialization VARCHAR(100),
    Email VARCHAR(255) UNIQUE NOT NULL,
    Phone VARCHAR(15) UNIQUE NOT NULL
);

-- Create Radiologists Table
CREATE TABLE Radiologists (
    RadiologistID INT PRIMARY KEY AUTO_INCREMENT,
    Name VARCHAR(255) NOT NULL,
    Specialization VARCHAR(100),
    Email VARCHAR(255) UNIQUE NOT NULL,
    Phone VARCHAR(15) UNIQUE NOT NULL
);

-- Create ImagingStudies Table
CREATE TABLE ImagingStudies (
    StudyID INT PRIMARY KEY AUTO_INCREMENT,
    PatientID INT NOT NULL,
    RadiologistID INT NOT NULL,
    StudyType VARCHAR(100) NOT NULL, -- e.g., X-ray, MRI, CT Scan
    StudyDate DATE NOT NULL,
    FOREIGN KEY (PatientID) REFERENCES Patients(PatientID),
    FOREIGN KEY (RadiologistID) REFERENCES Radiologists(RadiologistID)
);

-- Create Reports Table
CREATE TABLE Reports (
    ReportID INT PRIMARY KEY AUTO_INCREMENT,
    StudyID INT NOT NULL,
    Findings TEXT NOT NULL,
    Diagnosis TEXT NOT NULL,
    ReportDate DATE NOT NULL DEFAULT (CURRENT_DATE),
    FOREIGN KEY (StudyID) REFERENCES ImagingStudies(StudyID)
);

-- Create Appointments Table
CREATE TABLE Appointments (
    AppointmentID INT PRIMARY KEY AUTO_INCREMENT,
    PatientID INT NOT NULL,
    RadiologistID INT NOT NULL,
    AppointmentDate DATE NOT NULL,
    Status ENUM('Scheduled', 'Completed', 'Cancelled') NOT NULL,
    FOREIGN KEY (PatientID) REFERENCES Patients(PatientID),
    FOREIGN KEY (RadiologistID) REFERENCES Radiologists(RadiologistID)
);
