With top_paying_job AS (

Select 
    job_id,
    job_title,
    salary_year_avg,
    name AS company_name

FROM
    job_postings_fact
LEFT JOIN company_dim ON job_postings_fact.company_id = company_dim.company_id

WHERE 
    job_title_short = 'Data Analyst' AND 
    job_location = 'Anywhere' AND
    salary_year_avg is not NULL

Order BY
    salary_year_avg DESC

Limit 10

)

SELECT
    top_paying_job.*,
    skills_dim.skills
    
From top_paying_job

INNER JOIN skills_job_dim on top_paying_job.job_id = skills_job_dim.job_id
INNER JOIN skills_dim on skills_job_dim.skill_id = skills_dim.skill_id

ORDER BY salary_year_avg DESC