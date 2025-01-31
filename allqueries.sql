Organization_Department
SELECT DISTINCT  
    DENSE_RANK() OVER (ORDER BY Department_Name) AS Org_Dept_ID,  
    Department_Name,  
    Organization_Name,  
    Total_Net_Square_Footage,  
    Research_Net_Square_Footage  
FROM Organization_Department;

Building
SELECT DISTINCT  
    DENSE_RANK() OVER (ORDER BY Name) AS Building_ID,  
    Name,  
    Address,  
    City,  
    State,  
    Zipcode  
FROM Building;

Floor

SELECT DISTINCT  
    DENSE_RANK() OVER (ORDER BY Floor_Number) AS Floor_ID,  
    Floor_Number,  
    Net_Square_Footage,  
    Research_Net_Square_Footage,  
    Building_ID,  
    Org_Dept_ID  
FROM Floor;

Research_Metrics

SELECT DISTINCT  
    DENSE_RANK() OVER (ORDER BY Metric_ID) AS Metric_ID,  
    Org_Dept_ID,  
    Floor_ID,  
    Three_Year_Avg_DC,  
    Three_Year_Avg_FA,  
    Three_Year_Avg_TDC,  
    DC_Per_Research_SqFt,  
    FA_Per_Research_SqFt,  
    TC_Per_Research_SqFt,  
    Research_FTE,  
    FTE_Per_Research_SqFt  
FROM Research_Metrics;


Awards

SELECT DISTINCT  
    DENSE_RANK() OVER (ORDER BY Award_ID) AS Award_ID,  
    Award_Number,  
    Award_Name,  
    School_Unit,  
    Org_Dept_ID,  
    Principal_Investigator_ID,  
    Co_Principal_Investigator_ID,  
    Award_Type,  
    Active_Installments,  
    Total_Installments,  
    Award_Status,  
    Customer_Type,  
    Customer_Subtype,  
    Funding_Source,  
    Federal_Sponsor,  
    Federal_Detail,  
    Sponsor_Name,  
    Sponsor_Customer_Type,  
    Sponsor_Customer_Subtype,  
    Reporting_Major_Sponsor,  
    Prime_Funding_Source,  
    Prime_Funding_Customer_Type,  
    Prime_Funding_Customer_Subtype,  
    Prime_Reporting_Major_Sponsor,  
    Start_Date,  
    End_Date,  
    Animal_Pending,  
    Animal_Received  
FROM Awards;

"Expenditure"

SELECT DISTINCT  
    DENSE_RANK() OVER (ORDER BY Expenditure_ID) AS Expenditure_ID,  
    Award_ID,  
    Org_Dept_ID,  
    Fiscal_Year,  
    Month,  
    Person_Credited,  
    Credited_EMPLID,  
    Credit_Percentage,  
    Expenditure_Type,  
    Principal_Investigator_ID,  
    Co_Principal_Investigator_ID,  
    NACUBO,  
    Purpose_Code,  
    Purpose_Type,  
    Expenditure_Category,  
    Customer_Type,  
    Customer_Subtype,  
    Funding_Source,  
    Federal_Sponsor,  
    Federal_Detail,  
    Sponsor_Name,  
    Sponsor_Customer_Type,  
    Sponsor_Customer_Subtype,  
    Reporting_Major_Sponsor,  
    Prime_Funding_Source,  
    Prime_Funding_Customer_Type,  
    Prime_Funding_Customer_Subtype,  
    Prime_Reporting_Major_Sponsor,  
    Cumulative_Direct_Expenditures,  
    Cumulative_IDC_Expenditures,  
    Cumulative_Total_Expenditures  
FROM Expenditure;

Invesgators

SELECT DISTINCT  
    DENSE_RANK() OVER (ORDER BY Investigator_ID) AS Investigator_ID,  
    Name,  
    Role  
FROM Investigators;
