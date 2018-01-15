[Home](../README.md)

# IBM Watson Sales Win Loss

[**Source**](https://www.ibm.com/communities/analytics/watson-analytics-blog/guide-to-sample-datasets/) | [**Description**](https://www.ibm.com/communities/analytics/watson-analytics-blog/sales-win-loss-sample-dataset/) | [**Download**](https://community.watsonanalytics.com/wp-content/uploads/2015/04/WA_Fn-UseC_-Sales-Win-Loss.csv)

> Understand your sales pipeline and uncover what can lead to successful sales opportunities and better anticipate performance gaps.

## Files

| Filename | Columns | Rows | Size |
|:---------|--------:|-----:|-----:|
| WA_Fn-UseC_-Sales-Win-Loss.csv | 19 columns | 78,025 rows | 8,895,213 bytes |

### WA_Fn-UseC_-Sales-Win-Loss.csv

#### Schema

* __Opportunity Number__<br/>
	A unique generated number assigned to the opportunity.
* __Supplies Subgroup__<br/>
	Reporting supplies subgroup. Values are:
	- Batteries & Accessories
	- Car Electronics
	- Exterior Accessories
	- Garage & Car Care
	- Interior Accessories
	- Motorcycle Parts
	- Performance Parts
	- Replacement Parts
	- Shelters & RV
	- Tires & Wheels
	- Towing & Hitches
* __Supplies Group__<br/>
	Reporting supplies group Values are: 
	- Car Accessories
	- Car Electronics
	- Performance & Non-auto
	- Tires & Wheels
* __Region__<br/>
	Name of the Region. Values could be:
	- Mid-Atlantic
	- Midwest
	- Northeast
	- Northwest
	- Pacific
	- Southeast
	- Southwest
* __Route To Market__<br/>
	The opportunities' route to market. Values are:
	- Fields Sales
	- Other
	- Reseller
	- Telecoverage
	- Telesales
* __Elapsed Days In Sales Stage__<br/>
	The number of days between the change in sales stages. The counter is reset for each new sales stage.
* __Opportunity Result__<br/>
	A closed opportunity is won or lost. Values could be *Win*/*Loss*.
* __Sales Stage Change Count__<br/>
	Actually a count of number of times an opportunity changes sales stages (back and forwards).
* __Total Days Identified Through Closing__<br/>
	Total days the opportunity has spent in Sales Stages from *Identified/Validating* to *Gained Agreement/closing*.
* __Total Days Identified Through Qualified__<br/>
	Total days the opportunity has spent in Sales Stages from *Identified/Validating* to *Qualified/Gaining Agreement*.
* __Opportunity Amount USD__<br/>
	Sum of line item revenue estimates by sales representative.
* __Client Size By Revenue__<br/>
	Client size based on annual revenue.
	- **1**: < \$1m
	- **2**: [\$1m, \$10m)
	- **3**: [\$10m, \$50m)
	- **4**: [\$50m, \$100m)
	- **5**: &ge; \$100m
* __Client Size By Employee Count__<br/>
	Client sized by number of employees. Values are:
	- **1**: < 1k
	- **2**: [1k, 5k)
	- **3**: [5k, 10k)
	- **4**: [10k, 30k)
	- **5**: &ge; 30k
* __Revenue From Client Past Two Years__<br/>
	Revenue identified from this client in past two years
	- **0**: none
	- **1**: [\$1, \$50k) 
	- **2**: [\$50k, \$400k) 
	- **3**: [\$400k, \$1.5m) 
	- **4**: &ge; \$1.5m
* __Competitor Type__<br/>
	An indicator if a competitor has been identified. Values: *Known*, *Unknown*, *None*.
* __Ratio Days Identified To Total Days__<br/>
	Ratio of total days the opportunity has spent in *Identified/Validating* sales stage over total days in sales process.
* __Ratio Days Validated To Total Days__<br/>
	Ratio of total days the Opportunity has presence in *Validated/Qualifying* sales stage over total days in sales process.
* __Ratio Days Qualified To Total Days__<br/>
	Ratio of total days the opportunity has been spent in *Qualified/Gaining Agreement* sales stage over total days in sales process.
* __Deal Size Category__<br/>
	Categorical grouping of the opportunity amount (OpportunityAmountUSD)
	- **1**: < \$10k 
	- **2**: [\$10k, \$25k)
	- **3**: [\$25k, \$50k)
	- **4**: [\$50k, \$100k)
	- **5**: [\$100k, \$250k)
	- **6**: [\$250k, \$500k)
	- **7**: &ge; \$500k

#### Sample

| Opportunity Number | Supplies Subgroup | Supplies Group | Region | Route To Market | Elapsed Days In Sales Stage | Opportunity Result | Sales Stage Change Count | Total Days Identified Through Closing | Total Days Identified Through Qualified | Opportunity Amount USD | Client Size By Revenue | Client Size By Employee Count | Revenue From Client Past Two Years | Competitor Type | Ratio Days Identified To Total Days | Ratio Days Validated To Total Days | Ratio Days Qualified To Total Days | Deal Size Category |
|:--|:--|:--|:--|:-:|--:|:-:|--:|--:|--:|--:|:-:|:-:|:-:|:-:|--:|--:|--:|:-:|
| 1641984	| Exterior Accessories | Car Accessories | Northwest | Fields Sales | 76 | Won | 13 | 104 | 101 | 0 | 5 | 5 | 0 | Unknown | 0.69636 | 0.113985 | 0.154215 | 1 |

#### Remarks

Sales process followed by data apparently as follows:

> Identified/Validating &rarr; Validated/Qualifying &rarr; Qualified/Gaining Agreement &rarr; Closing

Not as realistic given lack of dates, customer IDs, and sales rep IDs.

## Sanity Checks

- [ ] Duplicate *Opportunity Number*s
- [ ] Missing values
- [ ] Outlying/typo values
- [ ] Check if *Ratio Days\** columns add to 100%
