With demanding_skills as (
    Select 
        skills_dim.skill_id,
        skills_dim.skills,
        count(skills) as number_of_skills_posted
    From job_postings_fact
    INNER JOIN skills_job_dim on job_postings_fact.job_id = skills_job_dim.job_id
    INNER JOIN skills_dim on skills_job_dim.skill_id = skills_dim.skill_id
    WHERE
    job_title_short = 'Data Analyst' And
    salary_year_avg is not null And 
    job_work_from_home = TRUE
    Group by skills_dim.skill_id
)
, average_salary as (
    Select 
        skills_dim.skill_id,
        Round(Avg(salary_year_avg), 0) As salary_average
    From job_postings_fact
    INNER JOIN skills_job_dim on job_postings_fact.job_id = skills_job_dim.job_id
    INNER JOIN skills_dim on skills_job_dim.skill_id = skills_dim.skill_id
    WHERE
    job_title_short = 'Data Analyst' AND
    salary_year_avg is not null And 
    job_work_from_home = TRUE
    Group by skills_dim.skill_id

)


Select
    demanding_skills.skill_id,
    demanding_skills.skills,
    number_of_skills_posted,
    salary_average
From demanding_skills
inner join average_salary on demanding_skills.skill_id = average_salary.skill_id
order BY
    number_of_skills_posted DESC,
    salary_average DESC