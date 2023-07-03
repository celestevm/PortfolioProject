
--DATA EXPLORATION

SELECT * 
FROM PortfolioProject..['Average Net Salary$']

-- To see how many county there are

SELECT DISTINCT COUNTY
FROM PortfolioProject..['Average Net Salary$']
ORDER BY COUNTY ASC

--To filter by city and year

SELECT *
FROM PortfolioProject..['Average Net Salary$']
WHERE County LIKE '%ALBA%' AND Year LIKE '%2014%'

--To see max salary by year and county

SELECT Year, county, MAX([Average Net Salary RON]) as MaxSalary
FROM ['Average Net Salary$']
GROUP BY Year, County

----To see min salary by year and county

SELECT Year, county, MIN([Average Net Salary RON]) as MinSalary
FROM ['Average Net Salary$']
GROUP BY Year, County

--To see max salary in general

SELECT county, MAX([Average Net Salary RON]) as MaxSalary
FROM ['Average Net Salary$']
GROUP BY County

--To see max salary by county

SELECT county, MAX([Average Net Salary RON]) as MaxSalaryYear
FROM ['Average Net Salary$']
WHERE Year LIKE '%2014%'
GROUP BY county

--To see min salary by specific county

SELECT county, MIN([Average Net Salary RON]) as MinSalaryYear
FROM ['Average Net Salary$']
WHERE Year LIKE '%2014%'
GROUP BY county

--To see global average salary  by specific year

SELECT AVG([Average Net Salary RON]) as SalaryAvg
FROM ['Average Net Salary$']
WHERE Year LIKE '%2017%'




