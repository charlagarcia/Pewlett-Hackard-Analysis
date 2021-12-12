# Pewlett-Hackard-Analysis

### Purpose
Pewlett Hackard will have thousands of job openings in the near future due to retirement.  They're looking ahead and preparing to fill these vacancies.  We needed to generate a list of Pewlett-Hackard employees eligible for a retirement package.

### Overview
1. Design an ERD that will apply to the data.
2. Create and use a SQL database.
3. Import and export large CSV datasets into pgAdmin.
4. Practice using different joins to create new tables in pgAdmin.
5. Write basic- to intermediate-level SQL statements.

### Results
- The "Retirement Titles" csv contains a list of employees who were born between 1952 and 1955 (approximately 65-69 years old), thus making them eligible for retirement. It also includes the titles of those employees, but has duplicate names since employees often move "up the ladder," changing their title.
- The "Unique Titles" csv contains the same list as "Retirement Titles," but filtered out the duplicate entries, making sure that title listed is current. After all the edits, and making sure to take out duplicates, this list shows that Pewlett-Hackard will have over 90,000 employees eligible for retirement soon.
- The "Retiring Titles" csv contains a count of the job titles of those employees who are eligible for retirement. PH will soon be losing almost 29,414 Senior Engineers, 28,254 Senior Staff, 14,222 Engineers, 12,243 Staff, 4,502 Technique Leaders, 1,761 Assistant Engineers, and 2 Managers.
- The "Mentorship Eligibility" csv contains a list of employees who would be candidates to move up into those vacant positions.  They are current employees born in 1965.

### Results
- There are over 90,000 positions that will need to be filled within the next 3-4 years.
- The "Mentorship Eligibility" list only has just over 1500 names, which won't even touch the surface of filling the needed vacancies.
- I would suggest changing the filter of eligibility to show time with the company, not age.  Narrowing this search to include only people born in 1965 means that not only are we looking over dedicated employees who might have the necessary experience for advancement, we're also ensuring that PH is in the same predicament 10 years from now.  
- If we open up the age range for the mentorship program and look at years of service instead, we will have a much larger pool of employees to choose from when filling the 90,000+ vacancies that are sure to arise, and those employees will not all be retiring at the same time ten years from now.
