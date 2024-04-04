select count(*) from hr_data;

--- kpi 1 Average Attrition rate for all Departments

SELECT Department, CONCAT(ROUND((COUNT(Attrition) / (SELECT COUNT(Attrition) FROM hr_data) * 100), 2), "%") AS Avg_Attrition_Rate
FROM hr_data
WHERE Attrition = 'Yes'
GROUP BY Department;

--- kpi2 Average Hourly rate of Male Research Scientist

 SELECT AVG(HourlyRate) AS Avg_Hourly_Rate
FROM hr_data
WHERE Gender = 'Male' AND JobRole = 'Research Scientist';

--- kpi3 Attrition rate Vs Monthly income stats

SELECT 
    CONCAT(ROUND((COUNT(Attrition) / (SELECT COUNT(Attrition) FROM hr_data) * 100), 2), "%") AS Avg_Attrition_Rate,
    AVG(Monthly_income) AS Avg_Monthly_Income
FROM hr_data
WHERE Attrition = 'Yes';

--- kpi4 Average working years for each Department

SELECT Department, AVG(TotalWorkingYears) AS Avg_Working_Years
FROM hr_data
GROUP BY Department;

--- kpi5 Job Role Vs Work life balance

SELECT JobRole, AVG(WorkLifeBalance) AS Avg_Work_Life_Balance
FROM hr_data
GROUP BY JobRole;

--- kpi6 Attrition rate Vs Year since last promotion relation

SELECT 
    YearsSinceLastPromotion,
    CONCAT(ROUND((COUNT(Attrition) / (SELECT COUNT(Attrition) FROM hr_data) * 100), 2), "%") AS Avg_Attrition_Rate
FROM hr_data
WHERE Attrition = 'Yes'
GROUP BY YearsSinceLastPromotion;







