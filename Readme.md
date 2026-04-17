# Virtusa Mini Projects

## Project Overview

This repository contains comprehensive mini projects and use cases demonstrating practical applications of Python and SQL technologies. The projects are organized into two main categories:

- **Mini Project Statements** - Foundational projects with detailed implementation guidelines
- **Mini Project Use Cases** - Real-world application scenarios with complete end-to-end implementations

---

## Repository Structure

```
virtusa-usecase-assignments/
│
├── README.md                            # This file (Root Documentation)
│
├── Mini Project Statements/
│   ├── README.md                        # Mini Project Statements Documentation
│   │
│   ├── python/
│   │   ├── main.py                      # Main execution file
│   │   ├── parser.py                    # File parsing module
│   │   ├── matcher.py                   # Skill matching logic
│   │   ├── skills.py                    # Skill database
│   │   ├── suggestions.py               # Recommendation engine
│   │   ├── requirements.txt             # Python dependencies
│   │   ├── README.md                    # Python project documentation
│   │   ├── job_desc/                    # Job description samples
│   │   │   └── sample_job_description.txt
│   │   ├── resumes/                     # Resume samples
│   │   └── outputs/                     # Analysis results
│   │       └── result.png
│   │
│   └── sql/
│       ├── hospital_management_analysis.sql  # Database and query script
│       ├── README.md                    # SQL project documentation
│       └── outputs/                     # Query execution results
│           ├── Patient_table.png
│           ├── doctors_table.png
│           ├── appointments_table.png
│           ├── treatments_table.png
│           ├── Most_consulted_doctors.png
│           ├── doctor_peformance_analysis.png
│           ├── monthly_revenue.png
│           ├── total_revenue.png
│           ├── common_disease.png
│           └── patient_visit_freq.png
│
├── Mini Project use cases/
│   ├── Readme.md                        # Use Cases Documentation
│   │
│   ├── python/
│   │   ├── opsbot.py                    # Operations bot implementation
│   │   ├── README.md                    # Python use case documentation
│   │   └── output/
│   │       ├── opsbot_ouput.png         # Bot output screenshot
│   │       └── security_alert_09-04-2026.txt
│   │
│   ├── sql/
│   │   ├── retail-insights.sql          # Retail business intelligence
│   │   ├── Readme.md                    # SQL use case documentation
│   │   └── outputs/
│   │       ├── tables_created.png
│   │       ├── products_data.png
│   │       ├── revenue_analysis.png
│   │       ├── dead_stock.png
│   │       ├── expiring_products.png
│   │       └── risk_level.png
│   │
│   └── java_project/
│       ├── Account.java                 # Account management class
│       ├── Main.java                    # Application entry point
│       ├── README.md                    # Java use case documentation
│       └── output/
│           ├── java_output.png
│           └── java_output2.png

```

---

## Mini Project Statements

### Overview

The Mini Project Statements folder contains two foundational projects that demonstrate core concepts in Python and SQL development.

**Location:** `Mini Project Statements/`

**Detailed Documentation:** See [Mini Project Statements/README.md](Mini%20Project%20Statements/README.md)

### Python Project - Resume Analyzer

A Python-based system for analyzing candidate resumes against job descriptions using Natural Language Processing and skill matching algorithms.

**Location:** `Mini Project Statements/python/`

**Key Features:**
- PDF resume text extraction
- Job description parsing
- Skill identification using spaCy NLP
- Match percentage calculation
- Skill gap analysis
- Automated improvement recommendations

**Technologies:**
- Python 3.7+
- spaCy (Natural Language Processing)
- pdfplumber (PDF extraction)

**Quick Setup:**
```bash
cd "Mini Project Statements/python"
pip install -r requirements.txt
python -m spacy download en_core_web_sm
python main.py
```

### SQL Project - Hospital Management System

A PostgreSQL-based relational database system for managing hospital operations with comprehensive analytical queries.

**Location:** `Mini Project Statements/sql/`

**Key Features:**
- Normalized database schema (Patients, Doctors, Appointments, Treatments)
- Referential integrity with foreign keys
- Advanced analytical queries
- Doctor performance metrics
- Revenue analysis and reporting
- Disease tracking and trends
- Patient visit frequency analysis

**Technologies:**
- PostgreSQL 12.0+
- pgAdmin (optional)
- SQL

**Output Files:**
For detailed query outputs and analytics screenshots, refer to [Mini Project Statements/README.md](Mini%20Project%20Statements/README.md)

---

## Mini Project Use Cases

### Overview

The Mini Project Use Cases folder demonstrates real-world application scenarios based on the foundational projects. These implementations show practical integration of the technologies in operational contexts.

**Location:** `Mini Project use cases/`

**Detailed Documentation:** See [Mini Project use cases/Readme.md](Mini%20Project%20use%20cases/Readme.md)

### Python Use Case - OpsBot

An operational support bot demonstrating real-time security alert processing and incident response automation.

**Location:** `Mini Project use cases/python/`

**Purpose:**
- Real-time security event monitoring
- Automated alert generation and escalation
- Incident logging and tracking
- Operational support automation

**Outputs:**
- Output screenshots and logs available in `Mini Project use cases/python/output/`

### SQL Use Case - Retail Insights

Business intelligence system for retail operations providing inventory management, revenue analysis, and risk assessment.

**Location:** `Mini Project use cases/sql/`

**Purpose:**
- Product inventory management
- Sales revenue tracking
- Dead stock identification
- Expiring product alerts
- Risk level assessment for inventory

**Outputs:**
- Output screenshots and reports available in `Mini Project use cases/sql/outputs/`

### Java Use Case - Account Management

Banking system demonstrating account operations, transaction processing, and balance management.

**Location:** `Mini Project use cases/java_project/`

**Purpose:**
- Account management operations
- Transaction processing
- Balance tracking and reporting
- Banking system functionality

**Outputs:**
- Output screenshots available in `Mini Project use cases/java_project/output/`

---

### Author

J N Ravinandan
SRM University(Vadapalani)
ravinandanjn2005@gmail.com