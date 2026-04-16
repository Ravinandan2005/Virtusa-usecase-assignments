from parser import extract_text

resume_path = "resumes/Ravinandan's_Resume.pdf"
job_desc_path = "job_desc/sample_job_description.txt"

resume_text  = extract_text(resume_path)
job_desc_text = extract_text(job_desc_path)

print("Resume Text:\n", resume_text)
print("\nJob Description Text:\n", job_desc_text)