-- ADVANCED LEVEL (Business-Style Questions)

SELECT 
    Most_Used_Platform,
    Academic_Level,
    ROUND(AVG(Addicted_Score), 2) AS Average_Addiction_Score
FROM
    students_social_media
GROUP BY Most_Used_Platform , Academic_Level
ORDER BY Average_Addiction_Score DESC
LIMIT 5;


-- Among students using social media more than 5 hours/day, what percentage report academic impact?
SELECT 
    ROUND(COUNT(*) * 100 / (SELECT 
                    COUNT(*)
                FROM
                    students_social_media
                WHERE
                    Avg_Daily_Usage_Hours > 5),
            2) AS Percentage_Report_Academic_Impact
FROM
    students_social_media
WHERE
    Affects_Academic_Performance = 'Yes'
        AND Avg_Daily_Usage_Hours > 5;



-- Identify the top 10% most addicted students and their average sleep duration.
with addicted_students as (
select * , 
Ntile(10) over(order by Addicted_Score desc) as addicted_list
 from students_social_media )
 
 select Round(avg(Sleep_Hours_Per_Night),2) as Avg_Sleep_Top_10_Percent from addicted_students where addicted_list=1;

-- Which platform has the strongest negative impact on mental health?
SELECT 
    Most_Used_Platform,
    Academic_Level,
    ROUND(AVG(Mental_Health_Score), 2) AS Mental_Health_Score
FROM
    students_social_media
GROUP BY Most_Used_Platform , Academic_Level
ORDER BY Mental_Health_Score
LIMIT 2;


-- Are students with severe addiction more likely to report academic issues?
SELECT 
    CASE
        WHEN Addicted_Score < 4 THEN 'Mild'
        WHEN Addicted_Score BETWEEN 4 AND 6 THEN 'Moderate'
        ELSE 'Severe'
    END AS Addiction_Level,
    COUNT(*) AS Report_Academic_Issues
FROM
    students_social_media
GROUP BY Addiction_Level , Affects_Academic_Performance
HAVING Affects_Academic_Performance = 'Yes';


-- Rank platforms based on average addiction score (use window functions).
select Most_Used_Platform, Round(Avg(Addicted_Score),2) as Avg_Addiction_Score 
,Rank() over (order by Avg(Addicted_Score) desc) as Addiction_Rank
from students_social_media group by Most_Used_Platform;


-- Compare mental health scores between:

-- Students sleeping <6 hours

-- Students sleeping ≥6 hours

Select 
Case
When Sleep_Hours_Per_Night <6 then 'Students sleeping <6 hours'
else 'Students sleeping ≥6 hours'
End as Sleep_Duration, Round(Avg(Mental_Health_Score),2) as Average_Mental_Health_Score 
from students_social_media group by Sleep_Duration ;

-- What is the correlation-style trend between usage category and conflict frequency?

Select 
Case
When Avg_Daily_Usage_Hours<3 then 'Low'
When Avg_Daily_Usage_Hours between 3 and 5 then 'Moderate'
else 'HIgh'
End as Usage_Category, Round(Avg(Conflicts_Over_Social_Media),2) as Average_Conflicts_Over_Social_Media
from students_social_media group by Usage_Category ;
