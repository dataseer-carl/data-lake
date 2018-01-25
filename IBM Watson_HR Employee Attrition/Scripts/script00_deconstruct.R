library(readr)
library(dplyr)
library(stringr)

raw.path <- file.path(
	".", "IBM Watson_HR Employee Attrition",
	"Raw", "WA_Fn-UseC_-HR-Employee-Attrition.csv"
)

hr.raw <- read_csv(raw.path)

# Fix metadata ####

hr.df <- hr.raw %>% 
	mutate(
		Separated = Attrition == "Yes",
		OverTime = OverTime == "Yes",
		SalaryHike = PercentSalaryHike / 100,
		Department = as.factor(Department),
		Sex = as.factor(Gender),
		MaritalStatus = as.factor(MaritalStatus),
		BusinessTravel = BusinessTravel %>% 
			str_replace_all(c("^Travel_" = "")) %>% 
			factor(c("Non-Travel", "Rarely", "Frequently")),
		Education = factor(
			Education, levels = 1:5,
			labels = c("Below College", "College", "Bachelor", "Master", "Doctor")
		),
		EnvironmentSatisfaction = factor(
			EnvironmentSatisfaction, levels = 1:4,
			labels = c("Low", "Medium", "High", "Very high")
		),
		JobInvolvement = factor(
			JobInvolvement, levels = 1:4,
			labels = c("Low", "Medium", "High", "Very high")
		),
		JobSatisfaction = factor(
			JobSatisfaction, levels = 1:4,
			labels = c("Low", "Medium", "High", "Very high")
		),
		PerformanceRating = factor(
			PerformanceRating, levels = 1:4,
			labels = c("Low", "Good", "Excellent", "Outstanding")
		),
		RelationshipSatisfaction = factor(
			RelationshipSatisfaction, levels = 1:4,
			labels = c("Low", "Medium", "High", "Very high")
		),
		WorkLifeBalance = factor(
			WorkLifeBalance, levels = 1:4,
			labels = c("Bad", "Good", "Better", "Best")
		),
		EmployeeNumber = str_pad(
			EmployeeNumber,
			max(str_length(EmployeeNumber)),
			side = "left", pad = "0"
		)
	) %>% 
	select(-Attrition, -Gender, -Over18, -StandardHours, -PercentSalaryHike, -EmployeeCount)

# Deconstruct ####

## Isolate satisfaction survey columns
satisfaction.df <- hr.df %>% 
	select(
		EmployeeNumber,
		EnvironmentSatisfaction, RelationshipSatisfaction, JobSatisfaction,
		JobInvolvement, WorkLifeBalance
	)

## Remove variables already in satisfaction survey
rmSatis.df <- hr.df %>% 
	select(
		-one_of(
			names(satisfaction.df) %>% str_subset("[^(EmployeeNumber)]")
		)
	)

## Isolate job variables
job.df <- rmSatis.df %>% 
	select(
		EmployeeNumber,
		Department, JobLevel, JobRole,
		YearsAtCompany, YearsInCurrentRole, YearsSinceLastPromotion,
		HourlyRate, DailyRate, MonthlyRate, MonthlyIncome, StockOptionLevel
	)

## Isolate bio variables
bio.df <- rmSatis.df %>% 
	select(
		EmployeeNumber,
		Sex, Age, MaritalStatus, DistanceFromHome,
		Education, EducationField, 
		NumCompaniesWorked, TotalWorkingYears
	)

rm.df <- rmSatis.df %>% 
	select(
		-one_of(
			c(names(job.df), names(bio.df)) %>% str_subset("[^(EmployeeNumber)]")
		)
	)
