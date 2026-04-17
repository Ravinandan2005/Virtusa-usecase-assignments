-- Hospital Management & Patient Analytics System
-- Author: J. N. Ravinandan

-- 1. CREATE DATABASE
-- CREATE DATABASE hospital_db;

-- 2. TABLE CREATION

CREATE TABLE patients (
patient_id INT PRIMARY KEY,
name VARCHAR(100),
age INT,
gender VARCHAR(10)
);

CREATE TABLE doctors (
doctor_id INT PRIMARY KEY,
name VARCHAR(100),
specialization VARCHAR(100)
);

CREATE TABLE appointments (
appointment_id INT PRIMARY KEY,
patient_id INT,
doctor_id INT,
appointment_date DATE,
FOREIGN KEY (patient_id) REFERENCES patients(patient_id),
FOREIGN KEY (doctor_id) REFERENCES doctors(doctor_id)
);

CREATE TABLE treatments (
treatment_id INT PRIMARY KEY,
patient_id INT,
diagnosis VARCHAR(100),
cost NUMERIC(10,2),
FOREIGN KEY (patient_id) REFERENCES patients(patient_id)
);

-- 3. INSERT SAMPLE DATA
INSERT INTO patients VALUES
(1, 'Ravi', 20, 'Male'),
(2, 'Shivanni', 21, 'Female'),
(3, 'Nandy', 22, 'Female'),
(4, 'Tamil', 21, 'Male');

INSERT INTO doctors VALUES
(101, 'Dr. Sharma', 'Cardiology'),
(102, 'Dr. Kumar', 'Dermatology'),
(103, 'Dr. Priya', 'Neurology');

INSERT INTO appointments VALUES
(1, 1, 101, '2025-04-01'),
(2, 2, 102, '2025-04-02'),
(3, 1, 103, '2025-04-05'),
(4, 3, 101, '2025-04-07');

INSERT INTO treatments VALUES
(1, 1, 'Heart Issue', 5000),
(2, 2, 'Skin Allergy', 1500),
(3, 3, 'Chest Pain', 3000),
(4, 1, 'Headache', 1000);

-- 4. BASIC VERIFICATION
SELECT * FROM patients;
SELECT * FROM doctors;
SELECT * FROM appointments;
SELECT * FROM treatments;

-- 5.1 Most Consulted Doctors
SELECT d.name AS doctor_name,
COUNT(a.appointment_id) AS total_visits
FROM doctors d
JOIN appointments a ON d.doctor_id = a.doctor_id
GROUP BY d.name
ORDER BY total_visits DESC;

-- 5.2 Total Revenue
SELECT SUM(cost) AS total_revenue
FROM treatments;

-- 5.3 Monthly Revenue
SELECT DATE_TRUNC('month', appointment_date) AS month,
SUM(t.cost) AS revenue
FROM appointments a
JOIN treatments t ON a.patient_id = t.patient_id
GROUP BY month
ORDER BY month;

-- 5.4 Most Common Diseases
SELECT diagnosis,
COUNT(*) AS frequency
FROM treatments
GROUP BY diagnosis
ORDER BY frequency DESC;

-- 5.5 Patient Visit Frequency
SELECT p.name,
COUNT(a.appointment_id) AS visits
FROM patients p
JOIN appointments a ON p.patient_id = a.patient_id
GROUP BY p.name
ORDER BY visits DESC;

-- 5.6 Doctor Performance Analysis
SELECT d.name AS doctor_name,
d.specialization,
COUNT(a.appointment_id) AS total_patients,
SUM(t.cost) AS total_revenue,
AVG(t.cost) AS avg_treatment_cost
FROM doctors d
JOIN appointments a ON d.doctor_id = a.doctor_id
JOIN treatments t ON a.patient_id = t.patient_id
GROUP BY d.name, d.specialization
ORDER BY total_revenue DESC;