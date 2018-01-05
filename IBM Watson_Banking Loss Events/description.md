[Home](../README.md)

# IBM Watson Banking Loss Events

[**Source**](https://www.ibm.com/communities/analytics/watson-analytics-blog/guide-to-sample-datasets/) | [**Definitions: risk categories**](https://en.wikipedia.org/wiki/Operational_risk) | [**Definitions: losses and recovery**](https://www.bis.org/bcbs/publ/d355.pdf) | [**Download**](https://community.watsonanalytics.com/wp-content/uploads/2015/03/WA_Fn-UseC_-Banking-Loss-Events-2007-14.xlsx)

> Understand hidden patterns and trends by combining various fields in Explore. Predict the leading drivers of a target, for example, using 'Recovery Amount' as the target.

## Sanity Checks

- [ ] Duplicate *Name*s
- [ ] Missing values
- [ ] Outlying/typo values
- [ ] Check if *Discovery Date* always earlier than *Start Date*
- [ ] Check if *Loss* is always less than *Net Loss*?
- [ ] Check if *Recovery Amount* is always less than both *Loss* and *Net Loss*?

## Cases

| Use case | DS1 | Excel Ninja | AVDD | R | Unsupervised ML | Predictive Analytics |
|:---------|:---:|:-----------:|:----:|:-:|:---------------:|:--------------------:|
| [ ] Operational Loss report | x | x | x | x | x |  |
| [ ] Operational Loss segmentation |  |  |  |  | x |  |

## Files

| Filename | Columns | Rows | Size |
|:---------|--------:|-----:|-----:|
| WA_Fn-UseC_-Banking-Loss-Events-2007-14.xlsx | 13 columns | 1,402 rows | 598,389 bytes |

## WA_Fn-UseC_-Banking-Loss-Events-2007-14.xlsx

### Schema

* __Region__<br/>
	Region of event.
* __Business__<br/>
	Business line affected.
* __Name__<br/>
	Key.
* __Status__<br/>
	Status of loss event.
* __Risk Category__<br/>
	Level 1 risk category.
	- *Clients, Products and Business Practices*: market manipulation, antitrust, improper trade, product defects, fiduciary breaches, account churning
	- *Execution, Delivery and Process Management*: data entry errors, accounting errors, failed mandatory reporting, negligent loss of client assets
	- *Employment Practices and Workplace Safety*: discrimination, workers compensation, employee health and safety
	- *Internal Fraud*: misappropriation of assets, tax evasion, intentional mismarking of positions, bribery
	- *External Fraud*: theft of information, hacking damage, third-party theft and forgery
	- *Damage to Physical Assets*: natural disasters, terrorism, vandalism
	- *Business Disruption and System Failures*: utility disruptions, software failures, hardware failures
* __Risk Sub-Category__<br/>
	Level 2 risk category.
* __Discovery Date__<br/>
	Date of discovery of loss event.
* __Occurrence Start Date__<br/>
	Starting date of occurrence of loss event.
* __Year__<br/>
	Year of occurrence.
* __Net Loss__<br/>
	Net loss is defined as the loss after taking into account the impact of recoveries.
* __Recovery Amount__<br/>
	The recovery is an independent occurrence, related to the original loss event, separate in time, in which funds or inflows of economic benefits are received from a third party.
* __Estimated Gross Loss__<br/>
	Gross loss is a loss before recoveries of any type.
* __Recovery Amount (percent)__<br/>
	![](http://latex.codecogs.com/gif.latex?\frac{\text{Recovery&space;Amount}}{\text{Net&space;Loss}}&space;\cdot&space;100)

### Sample

| Region | Business | Name | Status | Risk Category | Risk Sub-Category | Discovery Date | Occurrence Start Date | Year | Net Loss | Recovery Amount | Estimated Gross Loss | Recovery Amount (percent) |
|:--|:--|:--|:-:|:--|:--|:-:|:-:|:-:|--:|--:|--:|--:|
| EMEA | Retail Brokerage | LE−06−2 | Under Review | Clients, Products and Business Practices | Product Flaws | 1-Jan-2007 | 2-Jan-2007 | 2007 | 296,555 | 83,035 | 291,100 | 28 |

## Notes

Some cells in xlsx-file use formula.

What is chronology of **Status**?

What is **Estimated Gross Loss** vs. **Net Loss**?