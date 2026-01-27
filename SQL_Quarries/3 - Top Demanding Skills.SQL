Select 
    skills,
    count(skills) as number_of_skills_posted
From job_postings_fact
INNER JOIN skills_job_dim on job_postings_fact.job_id = skills_job_dim.job_id
INNER JOIN skills_dim on skills_job_dim.skill_id = skills_dim.skill_id
WHERE
job_title_short = 'Data Analyst'

Group by skills
order by number_of_skills_posted desc
limit 10