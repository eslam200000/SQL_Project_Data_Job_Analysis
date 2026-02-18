# SQL_Project_Data_Job_Analysis

## Introduction
This project explores the data job market using SQL. The goal is to answer practical questions such as:
- What are the top-paying Data Analyst roles?
- Which skills are most demanded in job postings?
- Which skills are associated with higher salaries?
- What skills should someone learn to improve job opportunities and earning potential?

The analysis is written as a set of SQL scripts that can be run to reproduce the results.

---

## Background
The demand for data roles is growing, but job requirements and salaries vary widely by company, location, and skill set.  
This project uses job posting data to analyze:
- Salary trends for Data Analyst roles
- High-value skills that correlate with higher pay
- In-demand skills appearing frequently in postings

---

## Tools I Used
- **SQL**: querying, joining tables, filtering, aggregations, and ranking
- **Database**: PostgreSQL
- **VS Code**: writing and organizing SQL scripts

---

## The Analysis
The repository is organized into two main parts:

- **SQL_Load/**: scripts to create tables and load/import data (if included). :contentReference[oaicite:1]{index=1}  
- **SQL_Quarries/**: the main analysis queries (5 SQL scripts). :contentReference[oaicite:2]{index=2}  

### 1) Top Paying Jobs
**File:** `1 - Top Paying Jobs.SQL`  
**Question:** Which job titles offer the highest salaries in the dataset?  
**Approach:** Aggregate the job postings by title, compute the average salary, and rank descending to identify the top-paying roles.  

![image alt](https://github.com/eslam200000/SQL_Project_Data_Job_Analysis/blob/63e611c7736866d05fb21b76e210fd6dc980c171/SQL%20Pictures/1%20-%20Top%20Paying%20Jobs/1%20-%20Top%20Paying%20Jobs%20SQL.png)

![image alt](https://github.com/eslam200000/SQL_Project_Data_Job_Analysis/blob/63e611c7736866d05fb21b76e210fd6dc980c171/SQL%20Pictures/1%20-%20Top%20Paying%20Jobs/1%20-%20Top%20Paying%20Jobs%20Chart.png)

### 2) Top Paying Job Skills
**File:** `2 - Top Paying Job Skills.SQL`  
**Question:** What skills are required for the highest paying Data Analyst roles?  
**Approach:** Take the top-paying jobs and join them with skills tables to find the most common skills among them.

![image alt](https://github.com/eslam200000/SQL_Project_Data_Job_Analysis/blob/3a832dd4ee17c8fda719f2a798d85ba35446eb3b/SQL%20Pictures/2%20-%20Top%20Paying%20Job%20Skills/2%20-%20Top%20Paying%20Job%20Skills%20SQL%20.png)

![image alt](https://github.com/eslam200000/SQL_Project_Data_Job_Analysis/blob/3a832dd4ee17c8fda719f2a798d85ba35446eb3b/SQL%20Pictures/2%20-%20Top%20Paying%20Job%20Skills/2%20-%20Top%20Paying%20Job%20Skills%20Chart.png)

### 3) Top Demanding Skills
**File:** `3 - Top Demanding Skills.SQL`  
**Question:** Which skills appear most frequently in Data Analyst job postings?  
**Approach:** Count skill frequency across postings and rank the most demanded skills.

![image alt](https://github.com/eslam200000/SQL_Project_Data_Job_Analysis/blob/3a832dd4ee17c8fda719f2a798d85ba35446eb3b/SQL%20Pictures/3%20-%20Top%20Demanding%20Skills/3%20-%20Top%20Demanding%20Skills%20SQL.png)

![image alt](https://github.com/eslam200000/SQL_Project_Data_Job_Analysis/blob/3a832dd4ee17c8fda719f2a798d85ba35446eb3b/SQL%20Pictures/3%20-%20Top%20Demanding%20Skills/3%20-%20Top%20Demanding%20Skills%20Chart.png)

### 4) Top Skills Based on Salary
**File:** `4 - Top Skills Based on Salary.SQL`  
**Question:** Which skills are associated with higher average salaries?  
**Approach:** Group postings by skill and compute average salary per skill, then rank descending.

![image alt](https://github.com/eslam200000/SQL_Project_Data_Job_Analysis/blob/3a832dd4ee17c8fda719f2a798d85ba35446eb3b/SQL%20Pictures/4%20-%20Top%20Skills%20Based%20on%20Salary/4%20-%20Top%20Skills%20Based%20on%20Salary%20SQL.png)

![image alt](https://github.com/eslam200000/SQL_Project_Data_Job_Analysis/blob/3a832dd4ee17c8fda719f2a798d85ba35446eb3b/SQL%20Pictures/4%20-%20Top%20Skills%20Based%20on%20Salary/4%20-%20Top%20Skills%20Based%20on%20Salary%20Chart.png)

### 5) Top Skills to Learn
**File:** `5 - Top Skills to learn.SQL`  
**Question:** Which skills are both high-demand and high-paying (best ROI skills)?  
**Approach:** Combine (demand frequency) + (average salary) to highlight skills that maximize job opportunities and pay.

![image alt](https://github.com/eslam200000/SQL_Project_Data_Job_Analysis/blob/3a832dd4ee17c8fda719f2a798d85ba35446eb3b/SQL%20Pictures/5%20-%20Top%20Skills%20to%20learn/5%20-%20Top%20Skills%20to%20learn%20SQL.png)

![image alt](https://github.com/eslam200000/SQL_Project_Data_Job_Analysis/blob/3a832dd4ee17c8fda719f2a798d85ba35446eb3b/SQL%20Pictures/5%20-%20Top%20Skills%20to%20learn/5%20-%20Most%20In-Demand%20Skills%20(Sample)%20%E2%80%94%202023.png)

![image alt](https://github.com/eslam200000/SQL_Project_Data_Job_Analysis/blob/3a832dd4ee17c8fda719f2a798d85ba35446eb3b/SQL%20Pictures/5%20-%20Top%20Skills%20to%20learn/5%20-%20Average%20Salary%20By%20Skill%20(Sample)%20%E2%80%94%202023.png)

---

## What I Learned
- How to structure a SQL analysis project into reusable scripts (loading vs analysis).
- How to use joins effectively to connect job postings, companies, and skill requirements.
- How filtering choices (e.g., remote roles, non-null salary) impact analysis quality.
- How to use aggregation + ranking to turn raw job postings into actionable insights.

---

## Conclusions
This project demonstrates how SQL can be used to analyze the job market and extract insights that help:
- Job seekers understand what skills matter most
- Analysts prioritize which skills to learn next
- Hiring teams benchmark skill requirements and salary patterns
