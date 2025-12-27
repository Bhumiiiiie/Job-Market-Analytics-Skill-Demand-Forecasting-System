-- Project: Job Market Analysis
-- Author: Bhumika
-- Database: PostgreSQL
-- Description: SQL queries for analyzing cleaned job postings data

SELECT * FROM job_postings LIMIT 10;

SELECT column_name, data_type
FROM information_schema.columns
WHERE table_name = 'job_postings';

SELECT COUNT(*) AS total_jobs
FROM job_postings;

SELECT DISTINCT job_title
FROM job_postings;

SELECT company, COUNT(*) AS job_count
FROM job_postings
GROUP BY company
ORDER BY job_count DESC;

SELECT location, COUNT(*) AS total_jobs
FROM job_postings
GROUP BY location
ORDER BY total_jobs DESC;

SELECT location, COUNT(*) AS total_jobs
FROM job_postings
GROUP BY location
ORDER BY total_jobs DESC
LIMIT 5;

SELECT COUNT(*) 
FROM job_postings
WHERE job_description ILIKE '%python%';

SELECT COUNT(*)
FROM job_postings
WHERE job_description ILIKE '%sql%';


SELECT job_title, company, salary_estimate
FROM job_postings
ORDER BY salary_estimate DESC
LIMIT 10;


