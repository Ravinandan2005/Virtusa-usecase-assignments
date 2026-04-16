# Resume Analyzer & Job Matcher

## Overview

This project is a Python-based Resume Analyzer that evaluates a candidate’s resume against a given job description. It extracts relevant skills from both inputs, compares them, and provides a match score along with actionable suggestions to improve alignment with the job role.

The system is designed to simulate a basic automated screening tool used in recruitment processes.

---

## Features

* Extracts text from PDF resumes and text-based job descriptions
* Identifies relevant skills using keyword matching and NLP (spaCy)
* Compares resume skills with job requirements
* Calculates a match percentage
* Highlights matched and missing skills
* Provides rule-based suggestions for improving the resume

---

## Tech Stack

* Python
* spaCy (Natural Language Processing)
* pdfplumber (PDF text extraction)

---

## Project Structure

```
resume_analyzer/
│
├── main.py              # Main execution file
├── parser.py            # Handles file reading (PDF/TXT)
├── matcher.py           # Skill extraction and matching logic
├── skills.py            # Predefined skill set
├── suggestions.py       # Rule-based suggestion engine
│
├── resumes/             # Sample resumes
├── job_desc/            # Job description files
```

---

## How It Works

1. The system reads the resume (PDF) and job description (TXT)
2. Text is extracted and preprocessed
3. Skills are identified using:

   * Keyword matching
   * NLP tokenization (spaCy)
4. Skills from both inputs are compared
5. A match percentage is calculated
6. Missing skills are identified
7. Suggestions are generated based on gaps and score

---

## Example Output

```
Match Percentage: 78.00%

Matched Skills:
['python', 'sql', 'api']

Missing Skills:
['machine learning', 'power bi']

Suggestions:
- Consider adding projects related to Machine Learning
- Include data visualization work using Power BI
- Improve resume by aligning more closely with the job role
```

---

## Setup Instructions

### 1. Clone the repository

```
git clone <your-repo-link>
cd resume_analyzer
```

### 2. Install dependencies

```
pip install pdfplumber spacy
python -m spacy download en_core_web_sm
```

### 3. Add files

* Place resume PDF in `/resumes`
* Add job description in `/job_desc`

### 4. Run the project

```
python main.py
```

---

## Limitations

* Skill extraction is based on a predefined list
* Does not handle scanned/image-based PDFs
* Suggestions are rule-based (not AI-generated)

---

## Future Improvements

* Integration with advanced NLP models for better skill detection
* Support for more file formats (DOCX, HTML)
* Weighted scoring system for different skill importance
* Web-based interface for user interaction

---

## Author

**J. N. Ravinandan**
**SRM University(Vadapalani)**
