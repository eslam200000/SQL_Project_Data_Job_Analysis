Select 
    job_id,
    job_title,
    job_location,
    job_schedule_type,
    job_work_from_home,
    job_no_degree_mention,
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