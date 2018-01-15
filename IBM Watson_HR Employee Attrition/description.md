[Home](../README.md)

# IBM Watson HR Employee Attrition

[**Source**](https://www.ibm.com/communities/analytics/watson-analytics-blog/guide-to-sample-datasets/) | [**Description**](https://www.kaggle.com/pavansubhasht/ibm-hr-analytics-attrition-dataset) | [**Download**](https://community.watsonanalytics.com/wp-content/uploads/2015/03/WA_Fn-UseC_-HR-Employee-Attrition.csv)

> Find out the leading drivers of Employee Attrition. Track and analyze employee satisfaction and retain valuable employees.

## Files

| Filename | Columns | Rows | Size |
|:---------|--------:|-----:|-----:|
| WA_Fn-UseC_-HR-Employee-Attrition.csv | 35 columns | 1,470 rows | 227,977 bytes |

### WA_Fn-UseC_-HR-Employee-Attrition.csv

#### Schema

* __Age__: Employee age
* __Attrition__: Has employee left the company: *Yes*, *No*
* __BusinessTravel__<br/>
	- *Travel_Frequently*
	- *Travel_Rarely*
	- *Non-travel*
* __DailyRate__<br/>
* __Department__<br/>
	- *Sales*
	- *Research & Development*
	- *Human Resources*
* __DistanceFromHome__<br/>
* __Education__<br/>
	- *1* 'Below College'
	- *2* 'College'
	- *3* 'Bachelor'
	- *4* 'Master'
	- *5* 'Doctor'
* __EducationField__<br/>
	- *Human Resources*
	- *Life Sciences*
	- *Marketing*
	- *Medical*
	- *Technical degree*
	- *Other*
* __EmployeeCount__: Dummy column
* __EmployeeNumber__: Employee ID
* __EnvironmentSatisfaction__<br/>
	- *1* 'Low'
	- *2* 'Medium'
	- *3* 'High'
	- *4* 'Very high'
* __Gender__: *Male*, *Female*
* __HourlyRate__<br/>
* __JobInvolvement__<br/>
	- *1* 'Low'
	- *2* 'Medium'
	- *3* 'High'
	- *4* 'Very high'
* __JobLevel__: Ranges from 1--5
* __JobRole__: Job title
* __JobSatisfaction__<br/>
	- *1* 'Low'
	- *2* 'Medium'
	- *3* 'High'
	- *4* 'Very high'
* __MaritalStatus__: *Single*, *Married*, *Divorced*
* __MonthlyIncome__<br/>
* __MonthlyRate__<br/>
* __NumCompaniesWorked__<br/>
* __Over18__: All *Yes*
* __OverTime__: *Yes*, *No*
* __PercentSalaryHike__<br/>
* __PerformanceRating__<br/>
	- *1* 'Low'
	- *2* 'Good'
	- *3* 'Excellent'
	- *4* 'Outstanding'
* __RelationshipSatisfaction__<br/>
	- *1* 'Low'
	- *2* 'Medium'
	- *3* 'High'
	- *4* 'Very high'
* __StandardHours__: All *80*
* __StockOptionLevel__: Ranges 0--3
* __TotalWorkingYears__<br/>
* __TrainingTimesLastYear__<br/>
* __WorkLifeBalance__<br/>
	- *1* 'Bad'
	- *2* 'Good'
	- *3* 'Better'
	- *4* 'Best'
* __YearsAtCompany__<br/>
* __YearsInCurrentRole__<br/>
* __YearsSinceLastPromotion__<br/>
* __YearsWithCurrManager__<br/>

### Sample

| Age | Attrition | BusinessTravel | DailyRate | Department | DistanceFromHome | Education | EducationField | EmployeeCount | EmployeeNumber | EnvironmentSatisfaction | Gender | HourlyRate | JobInvolvement | JobLevel | JobRole | JobSatisfaction | MaritalStatus | MonthlyIncome | MonthlyRate | NumCompaniesWorked | Over18 | OverTime | PercentSalaryHike | PerformanceRating | RelationshipSatisfaction | StandardHours | StockOptionLevel | TotalWorkingYears | TrainingTimesLastYear | WorkLifeBalance | YearsAtCompany | YearsInCurrentRole | YearsSinceLastPromotion | YearsWithCurrManager |
|--:|:-:|:-:|--:|:--|--:|:-:|:--|--:|:-:|:-:|:-:|--:|:-:|:-:|:--|:-:|:-:|--:|--:|--:|:-:|:-:|--:|:-:|:-:|--:|:-:|--:|--:|:-:|--:|--:|--:|--:|
| 41 | Yes | Travel_Rarely | 1102 | Sales | 1 | 2 | Life Sciences | 1 | 1 | 2 | Female | 94 | 3 | 2 | Sales Executive | 4 | Single | 5993 | 19479 | 8 | Y | Yes | 11 | 3 | 1 | 80 | 0 | 8 | 0 | 1 | 6 | 4 | 0 | 5 |

## Sanity Checks

- [ ] Duplicate *EmployeeNumber*s
- [ ] Missing values
- [ ] Outlying/typo values
- [ ] Disambiguate *DailyRate*, *HourlyRate*, *MonthlyRate*, and *MonthlyIncome*