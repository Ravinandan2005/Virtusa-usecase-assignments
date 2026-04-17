# Hospital Management & Patient Analytics System (PostgreSQL)

## Overview

This project implements a relational database system using PostgreSQL to manage hospital data and perform analytical queries. It models core entities such as patients, doctors, appointments, and treatments, and derives meaningful insights from the stored data.

The system demonstrates database design, relationships, and SQL-based analytics using pgAdmin.

---

## Objectives

* Design a normalized relational database
* Establish relationships using foreign keys
* Perform analytical queries on hospital data
* Extract insights such as revenue, doctor performance, and patient trends

---

## Database Schema

### Tables

* **patients** – Stores patient details
* **doctors** – Stores doctor information
* **appointments** – Tracks patient-doctor interactions
* **treatments** – Stores diagnosis and treatment cost

### Relationships

* One patient → multiple appointments
* One doctor → multiple appointments
* One patient → multiple treatments

---

## Features

* Structured relational database design
* Data integrity using foreign keys
* Analytical queries using JOIN, GROUP BY, and aggregation functions
* Doctor performance evaluation
* Revenue and disease analysis

---

## Technologies Used

* PostgreSQL
* pgAdmin
* SQL

---

## How to Run

1. Create database:

```sql
CREATE DATABASE hospital_db;
```

2. Connect:

```sql
\c hospital_db;
```

3. Run the SQL file:

```sql
\i hospital_management_analysis.sql
```

---

## Query Outputs

### Patients Table

![Patients Table](outputs/Patient_table.png)

### Doctors Table

![Doctors Table](outputs/doctors_table.png)

### Appointments Table

![Appointments Table](outputs/appointments_table.png)

### Treatments Table

![Treatments Table](outputs/treatments_table.png)

---

### Most Consulted Doctors

![Most Consulted Doctors](outputs/Most_consulted_doctors.png)

### Total Revenue

![Total Revenue](outputs/total_revenue.png)

### Monthly Revenue

![Monthly Revenue](outputs/monthly_revenue.png)

### Most Common Diseases

![Common Diseases](outputs/common_disease.png)

### Patient Visit Frequency

![Patient Visits](outputs/patient_visit_freq.png)

### Doctor Performance Analysis

![Doctor Performance](outputs/doctor_peformance_analysis.png)

---

## Key Insights

* Identified most frequently visited doctors
* Calculated total and monthly revenue trends
* Analyzed common diseases among patients
* Evaluated doctor performance based on patient load and revenue

---

## Author

J. N. Ravinandan<br>
SRM Institute of Science and Technology