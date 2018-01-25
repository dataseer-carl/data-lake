[Home](../README.md)

# Power BI Opportunity Analysis

[**Source**](https://docs.microsoft.com/en-us/power-bi/sample-datasets) | [**Description**](https://docs.microsoft.com/en-us/power-bi/sample-opportunity-analysis) | [**Data**](http://download.microsoft.com/download/9/1/5/915ABCFA-7125-4D85-A7BD-05645BD95BD8/Opportunity%20Analysis%20Sample%20PBIX.pbix)

> This industry sample explores a software company's sales channel. Sales managers monitor their direct and partner sales channels by tracking opportunities and revenue by region, deal size, and channel.

## Files

| Filename | Columns | Rows | Size |
|:---------|--------:|-----:|-----:|
| **Opportunity Tracking.xlsx** |  |  | 82,011 bytes |
| [Opportunity Tracking.xlsx]Account! | 4 columns | 357 rows |  |
| [Opportunity Tracking.xlsx]Fact! | 13 columns | 487 rows |  |
| [Opportunity Tracking.xlsx]Opportunity! | 5 columns | 486 rows |  |
| [Opportunity Tracking.xlsx]Partner! | 3 columns | 101 rows |  |
| [Opportunity Tracking.xlsx]Product! | 2 columns | 25 rows |  |
| [Opportunity Tracking.xlsx]Sales Stage! | 3 columns | 5 rows |  |

### [Opportunity Tracking.xlsx]Account!

#### Schema

* __Account__: Account name
* __Region__: one of `Central`, `East`, or `West`
* __Segment__: one of `Large`, `Small & Medium`, or `Strategic`
* __Account ID__

#### Sample

| Account | Region | Segment | Account ID |
|:--|:-:|:-:|:--|
| Damkix | East | Strategic | 6

### [Opportunity Tracking.xlsx]Fact!

#### Schema

* __EstimatedCloseDate__
* __Opportunity ID__: reference table in *Opportunity* sheet
* __Sales Stage ID__: reference table in *Sales Stage* sheet
* __Account ID__: reference table in *Account* sheet
* __Partner ID__: reference table in *Partner* sheet
* __Product ID__: reference table in *Product* sheet
* __ProductRevenue__: this is a salesperson’s estimate of what he believes the revenue will be
* __FactoredProductRevenue__: *Revenue* $\times$ *Probability*; which is determined by the deal's current *Sales Stage*
* __Create Date__: Date sales process was initiated.  [May be in number of days from Excel epoch.]
* __Opportunity Days__: Estimated duration of sales process.  *EstimatedCloseDate* - *Create Date*
* __Year__: Year of estimated close date
* __Month\_Number__: Month of estimated close date
* __Month: Month of estimated close date in %b format

#### Sample

| EstimatedCloseDate | Opportunity ID | Sales Stage ID | Account ID | Partner ID | Product ID | ProductRevenue | FactoredProductRevenue | Create Date | Opportunity Days | Year | Month_Number | Month |
|:--|:--|:-:|:--|:--|:--|--:|--:|--:|--:|:-:|:-:|:-:|
| 2015-11-20  10:59:00 AM | 84 | 1 | 72 | 22 | 1 | 356,981 | 35,698 | 41679 | 649 | 2015 | 11 | Nov |

#### Remarks

In *Fact*, there are two rows whose *Opportunity ID* = `302`.

### [Opportunity Tracking.xlsx]Opportunity!

#### Schema

* __Name__: name of deal
* __Opportunity ID__
* __Rank__: rank of deal size
* __SizeID__: code of deal size as classified by salesperson
* __Opportunity Size__: size classification of deal as determined by sales person

#### Sample

| Name | Opportunity ID | Rank | SizeID | Opportunity Size |
|:--|:-:|--:|:-:|:-:|
| Opportunity #1 | 1 | 12 | 1 | Small |

### [Opportunity Tracking.xlsx]Partner!

#### Schema

* __Partner__: name of partner
* __Partner ID__
* __Partner Driven__: whether channel is partner-driven or not

#### Sample

| Partner | Partner ID | Partner Driven |
|:--|:--|:-:|
| Daltdexon | 1 | Yes |

#### Remarks

Includes `Direct` sales channel; which is the only *Partner* that is not partner-driven

### [Opportunity Tracking.xlsx]Product!

#### Schema

* __Product Code__: product name
* __Product ID__

#### Sample

| Product Code | Product ID |
|:--|:-:|
| Abbas | 1 |

### [Opportunity Tracking.xlsx]Sales Stage!

#### Schema

* __Probability__: probability that deals in this stage of the sales process will be closed
* __Sales Stage__: descriptive name of sales stage
* __Sales Stage ID__

#### Sample

| Probability | Sales Stage | Sales Stage ID |
|--:|:-:|:-:|
| 10% | Lead | 1 |

## Sanity Checks

- [ ] *Create Date* is loaded properly as Dates