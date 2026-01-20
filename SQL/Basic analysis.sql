-- How many students are included in the dataset?
SELECT 
    COUNT(student_id) AS Total_Students
FROM
    students_social_media;

-- What is the average age of students?
SELECT 
    ROUND(AVG(Age), 0) AS Average_age
FROM
    students_social_media;

-- How many students belong to each academic level?
SELECT 
    Academic_Level, COUNT(student_id) AS Total_Students
FROM
    students_social_media
GROUP BY Academic_Level;


-- Which social media platform is used by the highest number of students?
SELECT 
    Most_Used_Platform, COUNT(student_id) AS Total_Students
FROM
    students_social_media
GROUP BY Most_Used_Platform
ORDER BY Total_Students DESC
LIMIT 1;

-- What is the average daily social media usage (hours) across all students?
SELECT 
    ROUND(AVG(Avg_Daily_Usage_Hours), 0) AS Avg_Daily_Usage_Hours
FROM
    students_social_media;

-- How many students report that social media affects their academic performance?
SELECT 
    COUNT(student_id) AS Students_Affected_Academically,
    ROUND(COUNT(student_id) * 100.0 / (SELECT 
                    COUNT(student_id) AS Total_Students
                FROM
                    students_social_media),
            2) AS percent_students_affected
FROM
    students_social_media
GROUP BY Affects_Academic_Performance
HAVING Affects_Academic_Performance = 'Yes';

-- What is the average addiction score for the entire dataset?
SELECT 
    ROUND(AVG(Addicted_Score), 1) AS Average_Adiction_Score
FROM
    students_social_media;

