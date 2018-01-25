[Home](../README.md)

# Power BI Retail Analysis

[**Source**](https://docs.microsoft.com/en-us/power-bi/sample-datasets) | [**Description**](https://docs.microsoft.com/en-us/power-bi/sample-retail-analysis) | [**Data**](http://download.microsoft.com/download/9/6/D/96DDC2FF-2568-491D-AAFA-AFDD6F763AE3/Retail%20Analysis%20Sample%20PBIX.pbix)

> This industry sample analyzes retail sales data of items sold across multiple stores and districts. The metrics compare this year's performance to last year's in these areas: sales, units, gross margin, and variance, as well as new store analysis.

## Files

| Filename | Columns | Rows | Size |
|:---------|--------:|-----:|-----:|
| **Sales.csv** | 10 columns | 923,371 rows | 42,114,725 bytes |
| **Retail Analysis.xlsx** |  |  | 9,145,174 bytes |
| [Retail Analysis.xlsx]District! | 7 columns | 9 rows |  |
| [Retail Analysis.xlsx]Item! | 5 columns | 364,184 rows |  |
| [Retail Analysis.xlsx]Store! | 19 columns | 104 rows |  |
| [Retail Analysis.xlsx]Time! | 5 columns | 734 rows |  |

### Sales.csv

#### Schema

* __MonthID__: date format %Y%m
* __ItemID__: reference table in [Retail Analysis.xlsx]Item!
* __LocationID__: reference table in [Retail Analysis.xlsx]Store!
* __Sum_GrossMarginAmount__
* __Sum_Regular_Sales_Dollars__
* __Sum_Markdown_Sales_Dollars__
* __ScenarioID__
* __ReportingPeriodID__: date format %Y%m%d; reference table in *Time*
* __Sum_Regular_Sales_Units__
* __Sum_Markdown_Sales_Units__

#### Sample

| MonthID | ItemID | LocationID | Sum_GrossMarginAmount | Sum_Regular_Sales_Dollars | Sum_Markdown_Sales_Dollars | ScenarioID | ReportingPeriodID | Sum_Regular_Sales_Units | Sum_Markdown_Sales_Units |
|:-:|:--|:--|--:|--:|--:|:--|:-:|--:|--:|
| 201408 | 256441 | 568 | 4.99 | 9.99 | 0 | 1 | 20140801 | 1 | 0 |

#### Remarks

From what level are the values in the *Sum_\** columns grossed up from?

Also, shouldn't *Reporting Period ID* be end-of-month?

There are negative values under *Sum_GrossMarginAmount*.

### [Retail Analysis.xlsx]District!

#### Schema

* __DistrictID__
* __District__: District code
* __DM__: Name of District Manager
* __DM_Pic_fl__: URL of picture of District Manager
* __DM_Pic__: Address of picture of District Manager hosted by Obvience; but accessible only to emails included in obvience-public.sharepoint.com directory
* __BusinessUnitID__: dead link
* __DMImage__: Dummy

#### Sample

| DistrictID | District | DM | DM_Pic_fl | DM_Pic | BusinessUnitID | DMImage |
|:--|:-:|:--|:--|:--|:--|:-:|
| 1 | FD - 01 | Valery Ushakov | http://farm6.staticflickr.com/5502/11550929204_d49a132feb_o.jpg | [https://obvience-public.sharepoint.com/SiteAssets/images/demo/people/Valery Ushakov.jpg](https://obvience-public.sharepoint.com/SiteAssets/images/demo/people/Valery Ushakov.jpg) | 3 | System.Byte[] |

#### Remarks

*Category* and *Sub Category* columns are identical.

### [Retail Analysis.xlsx]Item!

#### Schema

* __ItemID__
* __Segment__: dead link
* __Category__: Code and category
* __Buyer__: *Last name*, *first name*
* __FamilyNane__

#### Sample

| ItemID | Segment | Category | Buyer | FamilyNane |
|:--|:-:|:--|:--|:--|
| 494 | 8599 | 090-Home | Robertson, Lillith | 850 |

#### Remarks

*FamilyNane* column name should be *FamilyName*.

*Segment* pertains to what?

### [Retail Analysis.xlsx]Store!

#### Schema

* __LocationID__
* __City Name__
* __Territory__
* __PostalCode__
* __OpenDate__: date that store opened in %Y-%m-%d format
* __SellingAreaSize__: Ranges from 10,000 -- 65,000
* __DistrictName__: District code
* __Name__: Store name
* __StoreNumberName__: *StoreNumber* - *Name*
* __StoreNumber__: *StoreID*
* __City__: *City*, *Territory*
* __Chain__: Name of store chain
* __DM__: Name of District Manager
* __DM_Pic__: Address of picture of District Manager hosted by Obvience; but accessible only to emails included in obvience-public.sharepoint.com directory
* __DistrictID__: Reference table in *District* sheet
* __Open Year__: Year store was opened(?)
* __Store Type__: Either `Same Store` or `New Store`
* __Open Month No__: Month store has opened as %m
* __Open Month__: Month store has opened as %b

#### Sample

| LocationID | City Name | Territory | PostalCode | OpenDate | SellingAreaSize | DistrictName | Name | StoreNumberName | StoreNumber | City | Chain | DM | DM_Pic | DistrictID | Open Year | Store Type | Open Month No | Open Month |
|:--|:--|:-:|:-:|:-:|--:|:--|:--|:--|:-:|:--|:--|:--|:-:|:-:|:-:|:-:|:-:|:-:|
| 2 | Weirton | WV | 26032 | 2010-05-01 | 40000 | FD - District #4 | Weirton Fashions Direct | 2 - Weirton Fashions Direct | 2 | Weirton, WV | Fashions Direct | Andrew Ma | [https://obvience-public.sharepoint.com/SiteAssets/images/demo/people/Andrew Ma.jpg](https://obvience-public.sharepoint.com/SiteAssets/images/demo/people/Andrew Ma.jpg) | 4 | 2010 | Same Store | 5 | May |

#### Remarks

*LocationID* proper key?

Distinct values for fields pertaining to the district should be identical to the District.

*OpenDate* not displayed in cells in Excel but can be seen in formula bar.

### [Supplier Quality Analysis.xlsx]Time!

#### Schema

* __ReportingPeriodID__
* __Period__: Period index
* __FiscalYear__: Year in %Y
* __FiscalMonth__: Month in %b
* __Month__: Numeric date(?)

#### Sample

| ReportingPeriodID | Period | FiscalYear | FiscalMonth | Month |
|:-:|:-:|:-:|:-:|--:|
| 20130101 | 1 | 2013 | Jan | 41275 |

## Sanity Checks

- [ ] Can values under *OpenDate* be imported if buggy in Excel?