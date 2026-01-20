-- INTERMEDIATE LEVEL (Analysis & Aggregation)

-- What is the average daily usage hours by academic level?
SELECT 
    Academic_Level, Round(Avg(Avg_Daily_Usage_Hours),1) AS Average_Daily_Usage_Hours
FROM
    students_social_media
GROUP BY Academic_Level;
-- Which gender has the highest average addiction score?
SELECT 
    Gender, Round(Avg(Addicted_Score),2) AS Average_Addiction_Score
FROM
    students_social_media
GROUP BY Gender order by Average_Addiction_Score desc ;

-- What is the average mental health score by usage category (Low / Moderate / High)?
SELECT 
    CASE
    When Avg_Daily_Usage_Hours< 2 then 'Low'
    When Avg_Daily_Usage_Hours between 2 and 5 then 'Moderate'
    else 'High'
    END as Usage_Category, Round(avg(Mental_Health_Score),2) AS Avg_Mental_Health_Score
FROM
    students_social_media group by Usage_Category
;

-- Which platforms have an average addiction score greater than 6?
SELECT 
    Most_Used_Platform, Round(Avg(Addicted_Score),2) AS Average_Addiction_Score
FROM
    students_social_media
GROUP BY Most_Used_Platform having Average_Addiction_Score>6;

-- How does sleep duration vary across addiction levels?
select CASE
When Addicted_Score <4 then 'Mild'
When Addicted_Score between 4 and 6 then 'Moderate'
else 'Severe'
End
as Addiction_level ,Round( Avg ( Sleep_Hours_Per_Night),2) as Average_Sleep
 from students_social_media group by Addiction_level order by Average_Sleep;

-- Which countries have the highest average daily usage hours?
SELECT 
    Country, Round(Avg(Avg_Daily_Usage_Hours),1) AS Average_Daily_Usage_Hours
FROM
    students_social_media
GROUP BY Country order by Average_Daily_Usage_Hours desc limit 5 ;

-- Is there a difference in addiction scores between students in relationships vs single?
SELECT 
    Relationship_Status,COUNT(*) AS Student_Count, Round(Avg(Addicted_Score),2) AS Average_Addiction_Score
FROM
    students_social_media
GROUP BY Relationship_Status;

-- What is the average number of conflicts per student by platform?
SELECT 
    Most_Used_Platform, Round(Avg( Conflicts_Over_Social_Media ),2) AS Average_Conflicts
FROM
    students_social_media
GROUP BY Most_Used_Platform;