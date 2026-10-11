-- Task 1: Student Management Database

-- 1. Create database---
CREATE DATABASE StudentManagment;
Use StudentManagment;

-- 2. Create Students table---
CREATE TABLE Students (
    StudentID    INT PRIMARY KEY AUTO_INCREMENT,
    Name         VARCHAR(50),
    Gender       CHAR(1),
    Age          INT,
    Grade        VARCHAR(2),
    MathScore    INT,
    ScienceScore INT,
    EnglishScore INT
);
DESCRIBE Students;

-- 3. Insert 10 records---
INSERT INTO Students (Name, Gender, Age, Grade, MathScore, ScienceScore, EnglishScore) VALUES
('Aarav Sharma', 'M', 16, 'A',  92, 88, 85),
('Priya Patel',  'F', 15, 'B',  78, 82, 90),
('Rohan Mehta',  'M', 17, 'B+', 85, 79, 74),
('Ananya Iyer',  'F', 16, 'A+', 96, 94, 91),
('Karan Singh',  'M', 15, 'C',  55, 61, 58),
('Sneha Desai',  'F', 17, 'A',  89, 92, 87),
('Vikram Rao',   'M', 16, 'B',  72, 68, 75),
('Neha Gupta',   'F', 15, 'B+', 81, 77, 84),
('Arjun Nair',   'M', 17, 'C',  64, 59, 66),
('Isha Kapoor',  'F', 16, 'A',  90, 85, 93),
('Rahul Verma',  'M', 15, 'D',  45, 52, 48),
('Meera Joshi',  'F', 17, 'B',  76, 80, 79);

  ----Query 1: Show all student details----
SELECT * FROM Students;

 ----(Explanantion : Select tells MySQL which data to retrieve. * means all columns. From Students specifies the Table.)

    ----Query 2: Calculate the average score in each subject----
SELECT AVG(MathScore) As AvgMath,
       AVG(ScienceScore) As AvgScience,
       AVG(EnglishScore) As AvgEnglish
FROM Students;

----(Explanation: AVG calculates the average of a numeric column. AS assigns a readable name to the result.)---

----Query 3: Find the top performer---

SELECT STUDENTID, Name,
       (MathScore + ScienceScore + EnglishScore) As TotalScore
FROM Students
ORDER BY TotalScore DESC
LIMIT 1;

---(Explanation: Adds the three subject scores to calculate TotalScore. ORDER BY Totalscore DESC sorts from highest to lowest. Limit 1 returns only the TOP ROW)---

----Query 4: Count the number of students in each grade----

SELECT Grade, Count(*) As StudentCount
FROM Students
GROUP BY Grade
ORDER BY Grade;

---(Explanation: GROUP BY Grade creates a group for each distinct grade, and COUNT(*) counts the students in each group.---

----Query 5: Calculate the average score by gender----

SELECT Gender,
       AVG(MathScore) As AvgMath,
       AVG(ScienceScore) As AvgScience,
       AVG(EnglishScore) As AvgEnglish
FROM Students
GROUP BY Gender;

---(Explanation: Group by Gender separates students into gender groups. AVG calculates each student's average across all three subjects.Round (...,2)displays two decimal places.)---

----Query 6: Find students whose Mathematics score is greater than 80----

SELECT StudentID, Name, MathScore
FROM Students
WHERE MathScore > 80
ORDER BY MathScore DESC;

---( Explanantion: Where Clause filters the table and keeps only students whose Mathematics marks are strictly greater than 80. A score of exactly 80 will not be included.)---

----Query 7: Update a student's grade----

UPDATE Students SET Grade = 'B' WHERE StudentID = 5;
SELECT StudentID, Name, Grade FROM Students WHERE StudentID = 5;

---(Explanation: Always use a suitable WHERE condition in as UPDATE Statement. Without it, MySQL could update every student's grade.)---

