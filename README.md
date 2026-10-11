# SQL-Data-Analysis--Intership-Task1
Student Management Database Project using MYSQL, with sample records and SQL Queries for student performance analysis
# Student Management Database - SQL Project

## Project Overview

This project builds a **Student Management Database** in MySQL and uses SQL
queries to analyse student academic performance. It is **Task 1** of the SQL
Data Analysis Internship at **Maincrafts Technology** and covers the core
skills every data analyst needs: creating a database, storing data, and
turning raw records into insights.

## Problem Statement

Schools and training institutes keep student records, such as scores, grades
and demographics, but need a quick way to answer questions like:
- Who is the top performer?
- How is each subject performing on average?
- How many students fall into each grade?
- Is there a performance difference between groups?

This project shows how SQL can answer those questions directly from a
structured database.

## What This Project Does

1. **Creates** a `StudentManagement` database and a `Students` table
   (ID, name, gender, age, grade, and Math, Science and English scores).
2. **Stores** 12 student records with variety in age, gender, grade and scores.
3. **Analyses** the data with 7 queries:
   - View all student details
   - Average score in each subject
   - Top performer (highest total score)
   - Number of students per grade
   - Average score by gender
   - Students scoring above 80 in Math
   - Updating a student's grade

## Key Findings

- Subject averages are close: Math 76.92, Science 76.42, English 77.50.
- **Ananya Iyer** is the top performer with 281 out of 300.
- Grades **A** and **B** are the most common (3 students each).
- 6 of 12 students scored above 80 in Math.
- In this small sample, female students averaged higher overall than male
  students (85.78 vs 68.11).

## Skills Demonstrated

`CREATE DATABASE` · `CREATE TABLE` · `PRIMARY KEY / AUTO_INCREMENT` ·
`INSERT` · `SELECT` · `WHERE` · `GROUP BY` · `ORDER BY` · `LIMIT` ·
`AVG / COUNT / MAX` · Subqueries · `UPDATE`

## Tools Used

MySQL 8.0 · MySQL Workbench · Microsoft Excel · DB Fiddle

## Deliverables

| File | Purpose |
|---|---|
| `Student_Management_Task1.sql` | Database, table, inserts and all queries |
| `Task1_Short_Report.pdf` | Query results explained |
| `Student_Management_Data.xlsx` | Dataset and Excel cross-check |
| `Students_clean.csv` | Clean CSV for the import wizard |
