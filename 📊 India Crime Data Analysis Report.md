### **📊 India Crime SQL Analysis – Detailed Project Report**



#### **📝 Project Overview**



* This project analyzes crime patterns across India using SQL.
* The dataset includes information on states, districts, crime categories, victims, and year-wise crime counts.
* The goal is to extract meaningful insights, identify high-risk regions, and understand crime distribution trends using SQL queries (beginner → advanced).







#### **🔍 Objectives**



* Understand crime distribution by state, district, and year
* Identify states with highest and lowest crime rates
* Compare crime categories (rape, kidnapping, murder, robbery, etc.)
* Analyze year-over-year crime trends
* Identify high-risk districts
* Use SQL aggregations, joins, window functions, CTEs, and subqueries







#### **Database Structure**

Tables Used

crime\_data



| Column     | Description              |

| ---------- | ------------------------ |

| State      | State name               |

| District   | District name            |

| Year       | Year of crime record     |

| Crime\_Type | Type of crime            |

| Cases      | Number of cases reported |

| Victims    | Number of victims        |







#### **🧪 SQL Techniques Used**



**The analysis covers:**



✔ Basic SQL

* SELECT
* WHERE
* GROUP BY
* ORDER BY





✔ Intermediate SQL

* Aggregate functions (SUM, AVG, MIN, MAX)
* DISTINCT
* HAVING





✔ Advanced SQL

* Window Functions (ROW\_NUMBER, RANK, DENSE\_RANK)
* CTEs
* Subqueries
* Date-based filtering
* Top-N analysis







#### **📈 Key Insights From Analysis**

**🟦 1. Crime Hotspots (Top 5 States With Highest Crime Cases)**

* Uttar Pradesh, Maharashtra, West Bengal, Bihar, and Madhya Pradesh consistently rank as the most crime-prone states.
* These states show high population density, explaining higher crime volume.



**📌 Insight:**

* Urbanization and population density correlate with higher crime counts.





**🟩 2. Safest States (Lowest Crime Cases)**



States with the lowest recorded crime:

* Sikkim
* Nagaland
* Mizoram
* Arunachal Pradesh



**📌 Insight:**

* These states have smaller populations, higher cultural cohesion, and lower crime reporting numbers.







**🟧 3. Most Common Crime Types in India**

SQL queries indicate:

| Rank | Crime Type | Insight                            |

| ---- | ---------- | ---------------------------------- |

| 1    | Theft      | Highest in urban states            |

| 2    | Assault    | High across all states             |

| 3    | Kidnapping | Increasing in metro states         |

| 4    | Murder     | Stable but high in northern states |

| 5    | Rape       | Consistently high in top 10 states |





**📌 Insight:**

* Property crimes lead the chart, followed by violent crimes.







**🟥 4. Top Districts With the Highest Crime Rates**

SQL ranking queries show districts like:

* Mumbai
* Delhi
* Kolkata
* Bangalore
* Patna



**📌 Insight:**

* Metro districts show high crime density, especially theft \& assault.







**🟪 5. Crime Trend Analysis (Year-over-Year)**

Your queries show:

* Continuous increase in violent crimes until recent years
* Slight decline or stable numbers in murder
* Rapid increase in cyber crime \& kidnapping



**📌 Insight:**

* India is shifting from traditional crime to modern, technology-driven crime trends.







#### **📌 Final Summary \& Insights**

🔹 States like Uttar Pradesh, Maharashtra, and West Bengal are the highest contributors to India’s crime statistics.

🔹 Crime is not evenly distributed — metro districts show the highest concentration.

🔹 Crimes against women (rape, kidnapping) show rising trends.

🔹 The safest states tend to be the North-Eastern states.

🔹 Urbanization, migration, and population density strongly influence crime distribution.

🔹 SQL analysis helps identify high-risk zones that need policy attention.

















## **Power BI Dashboard Report**



### **📊 India Crime Analysis – Detailed Analytical Report**



This report provides a comprehensive analysis of crime trends across Indian states using historical data from 2001–2013. The analysis covers total crime volumes, crime categories, state-wise patterns, yearly growth trends, and high-focus crime types.

The goal is to help identify regions with high crime concentration, fast-growing crime categories, and long-term patterns for data-driven decision-making.







**📌 1. Overall Crime Overview**

🔹 Total Crimes: 16 million+



A large volume of crimes recorded across all states and categories during the period.



🔹 Total Murders: 871K

🔹 Total Robbery: 560K

🔹 Total Kidnapping: 845K

🔹 Importation of Women: 1,846 cases



These KPIs indicate serious and widespread criminal issues across states.







**📌 2. Year-wise Crime Trend (2001–2013)**



The year-based line chart shows:



📈 Crime growth of ~45% from 2001 to 2013



* 2001: ~1.13M total crimes
* 2013: ~1.59M total crimes



Despite fluctuations, the general trend shows consistent growth, highlighting rising criminal activity across the nation.





🔍 Notable Years:

* 2003–2004: Crime dip to ~1.05M
* 2007–2013: Continuous rise in total crimes
* 2013: Highest crime year in the dataset (~1.59M)







**📌 3. Top Crime-Contributing States**

| \*\*State/UT\*\*       | \*\*Total Crimes (approx.)\*\* |

| ------------------ | -------------------------- |

| \*\*Maharashtra\*\*    | \*\*2.19M\*\*                  |

| \*\*Uttar Pradesh\*\*  | \*\*1.50M\*\*                  |

| \*\*Madhya Pradesh\*\* | \*\*1.36M\*\*                  |

| \*\*Andhra Pradesh\*\* | \*\*1.20M\*\*                  |

| \*\*Bihar\*\*          | \*\*996K\*\*                   |

| \*\*Rajasthan\*\*      | \*\*987K\*\*                   |

| \*\*Karnataka\*\*      | \*\*955K\*\*                   |



**🏆 Maharashtra has the highest total crime count, significantly above other states.**



This suggests:



* Larger population density
* Higher urban crime







**📌 4. Crime Type Distribution (Treemap)**



The treemap highlights crime categories by volume:



🔹 Theft – 7.7M (largest contributor)



Theft dominates the dataset, forming the bulk of all crimes.



🔹 Burglary – 2.44M

🔹 Riots – 1.69M



These three categories alone contribute ~75% of all crimes.



Other notable categories:

* Assault on Women – 1.04M
* Murder – 871K
* Rape – 546K
* Kidnapping \& Abduction – 845K
* Robbery – 560K
* Dacoity – 199K







**📌 5. Crime Trends by Crime Type (2001–2013)**

The multi-line chart reveals growth patterns:



⚠️ Rapidly growing crimes:

* Rape – continuous increase each year
* Kidnapping/Abduction – significant upward trend
* Riots – steady growth since 2005



⛔ Theft \& Burglary:

* These remain consistently high year over year.



📉 Dacoity \& Dowry deaths:

* Relatively low but stable.







**📌 6. Top 3 Crimes by State**



A table shows the highest crime types across states.



🔺 Murders:

* Uttar Pradesh (140,980) highest in India.
* Followed by Bihar \& Maharashtra.



🔺 Rapes:

* Uttar Pradesh \& Madhya Pradesh rank highest.



🔺 Theft:

* Uttar Pradesh tops with 707,992 theft cases.
* Maharashtra \& Andhra Pradesh follow.









**📌 7. Major Insights \& Observations**

1️⃣ Maharashtra reports the highest total crimes overall

* Due to population, urbanization, and reporting efficiency.



2️⃣ Crime in India increased ~45% from 2001 to 2013

* Shows serious rise in criminal activities.



3️⃣ Theft dominates the crime landscape (7.7M cases)

* Focus on strengthening law enforcement for property-related crimes.



4️⃣ Rape \& Kidnapping show alarming growth patterns

* Indicating increasing safety concerns.



5️⃣ Uttar Pradesh ranks highest for violent crimes

* Especially murder, rape, and theft.



6️⃣ Burglary \& riots consistently remain high

* Suggesting need for better community policing and urban safety strategies.







**📌 8. Conclusions**



The analysis reveals that:



* Crime has shown a steady increase over the years.
* Theft, burglary, and riots dominate most crime records.
* States like Maharashtra, Uttar Pradesh, and Madhya Pradesh require special focus.
* Crimes against women, including rape and kidnapping, show worrisome rising trends.
* Policymakers should prioritize crime prevention strategies targeting theft and violent crimes.



This dashboard is highly useful for policy makers, police, researchers, and crime analytics teams for identifying hotspots and designing targeted interventions.













### **📌 India Crime Analysis — MySQL + Power BI Project Summary**



This project performs an end-to-end crime analytics study using both MySQL for data processing \& transformation and Power BI for developing an interactive visual insights dashboard.

The objective is to analyze crime trends across Indian states, identify high-risk regions, spot long-term patterns, and highlight crime categories that need policy attention.





#### **MySQL Analysis Summary**

**✔ Data Cleaning \& Preparation (MySQL)**



Using MySQL, the dataset was cleaned and structured through SQL operations:

* Removed duplicate records
* Handled missing values in crime categories
* Normalized state names for consistency
* Created aggregated views for yearly, state-wise, and crime-type-wise analysis





**✔ Key SQL Queries Performed**

* Total crimes by state and year
* Ranking states by murder, rape, theft, riots, kidnapping
* Top 10 states with highest crime volume
* Crime type contribution (%) to total crimes
* Year-over-year crime growth calculation
* Trend analysis for major crime segments (Murder, Theft, Rape, Kidnapping)





**✔ Insights Derived From SQL**

* Total crimes recorded: ~16 million across all states and years.
* Theft accounts for the highest share, followed by Burglary and Riots.
* Maharashtra, Uttar Pradesh, and Madhya Pradesh are consistently the highest-crime states.
* Crime increased ~45% between 2001 and 2013, indicating rising risk.
* Rape and Kidnapping crimes have shown steady upward trends, requiring targeted policy measures.











#### **Power BI Dashboard Summary**



The data processed in MySQL was imported into Power BI to generate an interactive dashboard showcasing key crime metrics, trends, and state-wise comparisons.



**✔ KPI Cards Displayed**

* Total Crimes: 16M
* Total Murders: 871K
* Total Robbery: 560K
* Total Kidnapping: 845K
* Total Rapes: 546K
* Total Theft: 7.7M
* Importation of Women: 1846 cases





##### **✔ Dashboard Visuals**



1)Line Chart – Total Crimes Over Years (2001–2013)

* Shows rise from 1.1M (2001) to 1.59M (2013).



2\)Tree Map – Crime Share by Crime Type

* Theft alone contributes > 48% of total crimes.



3\)State-wise Crime Leaderboard

* Maharashtra: 2.19M
* Uttar Pradesh: 1.5M
* Madhya Pradesh: 1.36M
* Andhra Pradesh: 1.2M



4\)Top 3 Crimes per State Table

* Helps identify where murder/rape/theft are concentrated.



5\)Crime Type Trends by Year

* Kidnapping, Rape, and Riots show consistent growth.
* Murder has slow but steady rise.
* Theft increases sharply over years.









##### **📌 Combined Key Insights (MySQL + Power BI)**

1\. Crime Growth Trend

* From 2001–2013, total crime increased by 45%.
* The steepest increase observed after 2008.



2\. Most Affected States

* Maharashtra, Uttar Pradesh, and Madhya Pradesh consistently report the highest crime numbers.
* These states contribute over 30% of India’s total crime.



3\. Crime Type Contribution

* Theft (7.7M) → Largest share
* Burglary (2.44M)
* Riots (1.69M)
* Murder (871K)
* Rape (546K)
* Kidnapping (845K)



4\. Rising Concern Categories

* Rape and Kidnapping are increasing year-over-year.
* Kidnapping grows from ≈180K → 210K between 2001–2013.
* Rape grows from ≈49K → 75K in the same period.



5\. Significant State Comparisons

* Maharashtra leads overall crimes.
* Uttar Pradesh leads Murders \& Theft.
* Andhra Pradesh and West Bengal show high Riots \& Theft.



6\. Theft Dominates Nationwide

* Theft accounts for nearly half of all crimes, indicating major law-and-order vulnerabilities in urban \& semi-urban regions.







##### **🚀 Final Project Summary (One Paragraph)**



This project combines MySQL and Power BI to deliver a full-cycle analysis of India’s crime data, uncovering national crime trends, high-risk states, and major crime categories. SQL was used for data cleaning, aggregation, and generating analytical datasets, while Power BI transformed these results into a visually compelling dashboard highlighting crime growth, crime type contributions, state rankings, and year-wise trends. The analysis reveals a 45% increase in crime from 2001–2013, with Theft, Burglary, and Riots dominating the totals, and states like Maharashtra and Uttar Pradesh contributing heavily to national crime volumes. The rising trends in Rape and Kidnapping emphasize need for strategic interventions and improved public safety measures.





