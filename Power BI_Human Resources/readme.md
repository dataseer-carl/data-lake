[Home](../README.md)

# Power BI Human Resources

[**Source**](https://docs.microsoft.com/en-us/power-bi/sample-datasets) | [**Description**](https://docs.microsoft.com/en-us/power-bi/sample-human-resources) | [**Data**](http://download.microsoft.com/download/6/9/5/69503155-05A5-483E-829A-F7B5F3DD5D27/Human%20Resources%20Sample%20PBIX.pbix)

> This industry sample focuses on the hiring strategy for a company by analyzing new hires, active employees, and employees who've left. By exploring the data, you can find trends in voluntary separations and biases in the hiring strategy.

## Files

| Filename | Columns | Rows | Size |
|:---------|--------:|-----:|-----:|
| **Employee.tsv** | 16 columns | 1,290,259 rows | 90,193,461 bytes |
| **Human Resources.xlsx** |  |  | 144,454 bytes |
| [Human Resources.xlsx]AgeGroup! | 2 columns | 3 rows |  |
| [Human Resources.xlsx]BU! | 4 columns | 30 rows |  |
| [Human Resources.xlsx]Date! | 12 columns | 2,557 rows |  |
| [Human Resources.xlsx]Ethnicity! | 2 columns | 7 rows |  |
| [Human Resources.xlsx]FP! | 2 columns | 2 rows |  |
| [Human Resources.xlsx]Gender! | 3 columns | 2 rows |  |
| [Human Resources.xlsx]PayType! | 2 columns | 2 rows |  |
| [Human Resources.xlsx]SeparationReason! | 2 columns | 2 rows |  |

### Employee.tsv

#### Schema

* __date__: format %Y-%m-%d %I:%m:%S %p; but always midnight of the first day of the month.  Runs from `Jan 2011` to `Dec 2014`
* __EmplID__: employee ID
* __Gender__: reference table in *Gender* sheet
* __Age__: age of employee in the year of record
* __EthnicGroup__: ethnicity of employee; reference table in *Ethnicity*
* __FP__: nature of employment; reference table in *FP* sheet
* __TermDate__: date of termination(?); format %Y-%m-%d %I:%m:%S %p but always midnight
* __isNewHire__: either `1` or missing
* __BU__: business unit; reference table in *BU* sheet
* __HireDate__: date employee as hired(?); format %Y-%m-%d
* __PayTypeID__: basis of pay; reference table in *PayType* sheet
* __TermReason__: whether separation was `Voluntary` of `Involuntary`; reference table in *SeparationReason*
* __AgeGroupID__: age group of employee; reference table in *AgeGroup* sheet
* __TenureDays__: tenure of employee in days
* __TenureMonths__: number of complete months that have passed throughout tenure of employee
* __BadHires__: `0` or `1` indicating if employee had a <60 day-employment(?)

#### Sample

| date | EmplID | Gender | Age | EthnicGroup | FP | TermDate | isNewHire | BU | HireDate | PayTypeID | TermReason | AgeGroupID | TenureDays | TenureMonths | BadHires |
|:-:|:--|:-:|--:|:-:|:-:|:-:|:-:|:--|:-:|:-:|:--|:-:|--:|--:|:-:|
| 2012-02-01 12:00:00 AM | 68346 | D | 21| 1 | P |  |  | 9 | 2010-10-16 | H |  | 1 | 473 | 15 | 0 |

#### Remarks

There are negative values under *TenureMonths*.  Possibly due to error in deriviation from *TenureDays*.

Also, does missing *TermDate* and *TermReason* mean that employee is not yet terminated?

### [Human Resources.xlsx]AgeGroup!

#### Schema

* __AgeGroupID__
* __AgeGroup__: three age groups with cutoffs at 30 years old and 50 years old

#### Sample

| AgeGroupID | AgeGroup |
|:-:|:--|
| 1 | <30 |

### [Human Resources.xlsx]BU!

#### Schema

* __BU__
* __RegionSeq__: *BU*-*Region*
* __VP__: Name of BU Head
* __Region__: one of `North`, `East`, `West`, `South`, `Midwest`, `Central`, `Northwest`

#### Sample

| BU | RegionSeq | VP | Region |
|:--|:--|:--|:-:|
| 1 | 1-North | Sherley Rhymes | North |

### [Human Resources.xlsx]Date!

#### Schema

* __Date__
* __Month__: %b
* __MonthNumber__: %m
* __Period__: %b-%y
* __PeriodNumber__: %Y%m
* __Qtr__
* __QtrNumber__: Q*Qtr*
* __Year__: %Y
* __Day__: %d
* __MonthStartDate__: Start date of the month for each date; %Y-%m-%d
* __MonthEndDate__: Last date of the month for each date; %Y-%m-%d
* __MonthIncrementNumber__: Period index

#### Sample

| Date | Month | MonthNumber | Period | PeriodNumber | Qtr | QtrNumber | Year | Day | MonthStartDate | MonthEndDate | MonthIncrementNumber |
|:-:|:-:|:-:|:-:|:-:|:-:|:-:|:-:|:-:|:-:|:-:|--:|
| 2010-07-01 | Jul | 7 | Jul-10 | 201007 | 3 | Q3 | 2010 | 1 | 2010-07-01 | 2010-07-31 | 7|

Columns in %Y-%m-%d formt are not displayed in cells in Excel but can be seen in formula bar.

### [Human Resources.xlsx]Ethnicity!

#### Schema

* __Ethnic Group__
* __Ethnicity__: from `Group A` thru `Group G`

#### Sample

| Ethnic Group | Ethnicity |
|:--|:-:|
| 1 | Group A |

### [Human Resources.xlsx]FP!

#### Schema

* __FP__
* __FPDesc__: either `Full-Time` or `Part-Time`

#### Sample

| FP | FPDesc |
|:--|:-:|
| F | Full-Time |

### [Human Resources.xlsx]Gender!

#### Schema

* __ID__
* __Gender__: either `Male` or `Female`
* __Sort__

#### Sample

| ID | Gender | Sort |
|:-:|:-:|--:|
| D | Male | 1 |

### [Human Resources.xlsx]PayType!

#### Schema

* __PayTypeID__
* __PayType__: either `Hourly` or `Salaried`

#### Sample

| PayTypeID | PayType |
|:-:|:--|
| H | Hourly |

### [Human Resources.xlsx]SeparationReason!

#### Schema

* __SeparationTypeID__
* __SeparationReason__: either `Involuntary` or `Voluntary`

#### Sample

| SeparationTypeID | SeparationReason |
|:-:|:--|
| U | Involuntary |

## Sanity Checks

- [ ] Since data is a log rather than a catalog, are the values that are supposed to be consistent for each employee across the entire period (e.g. EthnicGroup) consitent?
- [ ] Is *BadHires* consistent across all periods for each employee?