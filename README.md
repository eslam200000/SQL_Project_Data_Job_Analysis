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
**Question:** What are the highest paying Data Analyst jobs (e.g., remote/“Anywhere”)?  
**Approach:** Filter for Data Analyst roles with non-null salary, join with company info, sort by average yearly salary.

### 2) Top Paying Job Skills
**File:** `2 - Top Paying Job Skills.SQL`  
**Question:** What skills are required for the highest paying Data Analyst roles?  
**Approach:** Take the top-paying jobs and join them with skills tables to find the most common skills among them.

### 3) Top Demanding Skills
**File:** `3 - Top Demanding Skills.SQL`  
**Question:** Which skills appear most frequently in Data Analyst job postings?  
**Approach:** Count skill frequency across postings and rank the most demanded skills.

### 4) Top Skills Based on Salary
**File:** `4 - Top Skills Based on Salary.SQL`  
**Question:** Which skills are associated with higher average salaries?  
**Approach:** Group postings by skill and compute average salary per skill, then rank descending.

### 5) Top Skills to Learn
**File:** `5 - Top Skills to learn.SQL`  
**Question:** Which skills are both high-demand and high-paying (best ROI skills)?  
**Approach:** Combine (demand frequency) + (average salary) to highlight skills that maximize job opportunities and pay.

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
