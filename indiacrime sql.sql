create database indiacrime; 
use indiacrime;
select * from crime;

 -- checking for null values
select * from crime where State is null or DISTRICT is null or Year is null;
 -- no null values present

-- unwanted blank spaces
SET SQL_SAFE_UPDATES = 0;
UPDATE crimes SET District = TRIM(District);
SET SQL_SAFE_UPDATES = 1;


-- 3. Check for duplicate rowes
select State, District, Year, count(*) from crime group by State, District, Year having count(*) > 1;


 -- 1) Total crimes pear year from 2001 to 2013
select year,sum(Murder + RAPE + Kidnapping + Dacoity + Burglary + Theft + Robbery + Riots + DowryDeath + AssaulttoWomen + Importofwomen)
as Total_Crimes from crime group by year order by Total_crimes desc;


-- 2) Total crimes by states from 2001 to 2013
select State,sum(Murder + RAPE + Kidnapping + Dacoity + Burglary + Theft + Robbery + Riots + DowryDeath + AssaulttoWomen + Importofwomen)
as Total_Crimes from crime group by State order by Total_crimes desc;


-- 3) Total crimes by districts
select District,sum(Murder + RAPE + Kidnapping + Dacoity + Burglary + Theft + Robbery + Riots + DowryDeath + AssaulttoWomen + Importofwomen)
as Total_Crimes from crime group by District order by Total_Crimes desc;


-- 4) Total of each crime type from 2001 to 2013
select SUM(Murder) AS Total_Murder,SUM(RAPE) AS Total_Rape,SUM(Kidnapping) AS Total_Kidnapping,SUM(Dacoity) AS Total_Dacoity,
       SUM(Burglary) AS Total_Burglary,SUM(Theft) AS Total_Theft,SUM(Robbery) AS Total_Robbery,SUM(Riots) AS Total_Riots,
       SUM(DowryDeath) AS Total_Dowry_Death,SUM(AssaulttoWomen) AS Total_Assault,SUM(Importofwomen) AS Total_Import_of_women
from crime;


-- 5) Year wise rape traind for specific state
select Year, sum(Rape) as Rape_Cases from crime
where State = 'Maharashtra' group by Year Order By Rape_cases desc;


-- 6) District with highest rape cases
select State, District, Sum(Rape) as Total_rapes from crime
group by State, District order by Total_rapes desc;


-- 7) Most dangerous state (highest total crimes in a single year)
select State,sum(Murder + RAPE + Kidnapping + Dacoity + Burglary + Theft + Robbery + Riots + DowryDeath + AssaulttoWomen + Importofwomen)
as Total_Crimes from crime group by State order by Total_Crimes desc limit 1;


-- 8) Compare total crimes between two years:
select State,
sum(case when Year = 2001 then Murder + RAPE + Kidnapping + Dacoity + Burglary + Theft + Robbery + Riots + DowryDeath + AssaulttoWomen + Importofwomen else 0 end)
as Crimes_2001,
sum(case when Year = 2013 then Murder + RAPE + Kidnapping + Dacoity + Burglary + Theft + Robbery + Riots + DowryDeath + AssaulttoWomen + Importofwomen else 0 end)
as Crimes_2013
from crime group by State order by Crimes_2013 desc;


 -- 9) Crime rate trend by year and crime type (pivot format):
 select Year,sum(Murder) as Murder, sum(RAPE) as Rape, sum(Kidnapping) as Kidnapping, sum(Dacoity) as Dacoity,
             sum(Burglary) as Burglary,sum(Theft) as Theft,sum(Robbery) as Robbery,sum(Riots) as Riots,sum(DowryDeath) as Dowry_Death,
			 sum(AssaulttoWomen) as Assault, sum(Importofwomen) as Import_women
from crime group by Year order by Year;
 
 
--  10) Top 5 states for each crime type:
select State, 
	   sum(Kidnapping) as Total_Kidnapping,sum(Murder) as Total_Murder,sum(RAPE) as Total_Rape,sum(Dacoity) as Total_Dacoity,
       sum(Burglary) as Total_Burglary,sum(Theft) as Total_Theft,sum(Robbery) as Total_Robbery,sum(Riots) as Total_Riots,
       sum(DowryDeath) as Total_Dowry_Death,sum(AssaulttoWomen) as Total_Assault_on_Women,sum(Importofwomen) as Total_Import_women
from crime
group by State
order by Total_Kidnapping desc
limit 5; 


-- 11) Multi-crime analysis: Top 5 states with high rape and kidnapping combined
select State,sum(Murder + RAPE + Kidnapping) as Total_Sensitive_Crime from crime group by State order by  Total_Sensitive_Crime desc limit 5;


 -- 12)1) -- crime rate grwoth each type 
select 'Murder' as Crime_Type,round((max(Murder) - min(Murder)) / min(Murder) * 100, 2) as Growth_Percent from crime where Murder > 0
union
select 'RAPE',round((max(RAPE) - min(RAPE)) / min(RAPE) * 100, 2)from crime where RAPE > 0
union
select'Kidnapping',round((max(Kidnapping) - min(Kidnapping)) / min(Kidnapping) * 100, 2)from crime where Kidnapping > 0
union
select 'Dacoity',round((max(Dacoity) - min(Dacoity)) / min(Dacoity) * 100, 2)from crime where Dacoity > 0
union
select 'Burglary',round((max(Burglary) - min(Burglary)) / min(Burglary) * 100, 2)from crime where Burglary > 0
union
select 'Theft',round((max(Theft) - min(Theft)) / min(Theft) * 100, 2) from crime where Theft > 0
union
select 'Robbery',round((max(Robbery) - min(Robbery)) / min(Robbery) * 100, 2) from crime where Robbery > 0
union
select 'Riots',round((max(Riots) - min(Riots)) / min(Riots) * 100, 2)from crime where Riots > 0
union
select 'Dowery_Death',round((max(DowryDeath) - min(DowryDeath)) / min(DowryDeath) * 100, 2)from crime where DowryDeath > 0
union
select 'Assault_on_Women',round((max(AssaulttoWomen) - min(AssaulttoWomen)) / min(AssaulttoWomen) * 100, 2)from crime
where AssaulttoWomen > 0
union
select 'Import_girls',round((max(Importofwomen) - min(Importofwomen)) / min(Importofwomen) * 100, 2)from crime where Importofwomen > 0;


 -- 13)-- year wise % share of each crme type
SELECT Year,ROUND(SUM(Murder)*100.0/SUM(Murder + RAPE + Kidnapping + Dacoity + Burglary + Theft + Robbery + Riots + DowryDeath + AssaulttoWomen + Importofwomen),2)as Murder_Pct,

ROUND(SUM(RAPE)*100.0/SUM(Murder + RAPE + Kidnapping + Dacoity + Burglary + Theft + Robbery + Riots + DowryDeath + AssaulttoWomen + Importofwomen), 2) as Rape_Pct,

ROUND(SUM(Kidnapping)*100.0/SUM(Murder + RAPE + Kidnapping + Dacoity + Burglary + Theft + Robbery + Riots + DowryDeath + AssaulttoWomen + Importofwomen),2) as Kidnapping_Pct,

ROUND(SUM(Dacoity)*100.0/SUM(Murder + RAPE + Kidnapping + Dacoity + Burglary + Theft + Robbery + Riots + DowryDeath + AssaulttoWomen + Importofwomen),2) as Dacoity_Pct,

ROUND(SUM(Burglary)*100.0/SUM(Murder + RAPE + Kidnapping + Dacoity + Burglary + Theft + Robbery + Riots + DowryDeath + AssaulttoWomen + Importofwomen),2)as Burglary_Pct,

ROUND(SUM(Theft)*100.0/SUM(Murder + RAPE + Kidnapping + Dacoity + Burglary + Theft + Robbery + Riots + DowryDeath + AssaulttoWomen + Importofwomen),2)as Theft_Pct,

ROUND(SUM(Robbery)*100.0/SUM(Murder + RAPE + Kidnapping + Dacoity + Burglary + Theft + Robbery + Riots + DowryDeath + AssaulttoWomen + Importofwomen),2)as Robbery_Pct,

ROUND(SUM(Riots)*100.0/SUM(Murder + RAPE + Kidnapping + Dacoity + Burglary + Theft + Robbery + Riots + DowryDeath + AssaulttoWomen + Importofwomen),2)as Riots_Pct,

ROUND(SUM(DowryDeath)*100.0/SUM(Murder + RAPE + Kidnapping + Dacoity + Burglary + Theft + Robbery + Riots + DowryDeath + AssaulttoWomen + Importofwomen),2)as Dowry_Death_Pct,

ROUND(SUM(AssaulttoWomen)*100.0/SUM(Murder + RAPE + Kidnapping + Dacoity + Burglary + Theft + Robbery + Riots + DowryDeath + AssaulttoWomen + Importofwomen),2)as Assault_on_Women_Pct,

ROUND(SUM(Importofwomen)*100.0/SUM(Murder + RAPE + Kidnapping + Dacoity + Burglary + Theft + Robbery + Riots + DowryDeath + AssaulttoWomen + Importofwomen),2)as Import_girls_Pct
from crime
group by Year
order by Year;

