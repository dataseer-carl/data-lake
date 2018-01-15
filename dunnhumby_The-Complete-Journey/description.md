[Home](../README.md)

# Dunhumby The Complete Journey

[**Source**](https://www.dunnhumby.com/sourcefiles)

> * Household level transactions over two years from a group of 2,500 households who are frequent shoppers at a retailer
> * All of a household’s purchases within the store, not just those from a limited number of categories
> * Demographics and direct marketing contact history for select households

## Files

| Filename | Columns | Rows | Size |
|:---------|--------:|-----:|-----:|
| campaign_desc.csv | 4 columns | 30 rows | 540 bytes |
| campaign_table.csv | 3 columns | 7,208 rows | 95,874 bytes |
| causal_data.csv | 5 columns | 3,678,6524 rows | 695,858,427 bytes |
| coupon.csv | 35 columns | 124,548 rows | 2,822,804 bytes |
| coupon_redempt.csv | 4 columns | 2,318 rows | 54,108 bytes |
| hh_demographic.csv | 8 columns | 801 rows | 44,349 bytes |
| product.csv | 7 columns | 92,353 rows | 6,429,896 bytes |
| transaction_data.csv | 12 columns | 2,595,732 rows | 141,742,346 bytes |

### campaign_desc.csv

Campaign schedule.

#### Schema

* __DESCRIPTION__<br/>
	Campaign type: *TypeA*, *TypeB*, or *TypeC*.
* __CAMPAIGN__<br/>
	Campaign ID.  Ranges 1--30.
* __START_DAY__<br/>
	Start date of campaign.
* __END_DAY__<br/>
	End date of campaign.

#### Sample

| DESCRIPTION | CAMPAIGN | START_DAY | END_DAY |
|:--|:--|--:|--:|
| TypeB | 24 | 659 | 719 |

### campaign_table.csv

Campaign whitelist.

#### Schema

* __DESCRIPTION__<br/>
	Campaign type: *TypeA*, *TypeB*, or *TypeC*.
* __household_key__<br/>
	Household ID
* __CAMPAIGN__<br/>
	Campaign ID.  Ranges 1--30.

#### Sample

| DESCRIPTION | household_key | CAMPAIGN |
|:--|:--|:--|
| TypeA | 17 | 26 |

### causal_data.csv

Campaign implementation details.

#### Schema

* __PRODUCT_ID__<br/>
	Product ID
* __STORE_ID__<br/>
	Store ID
* __WEEK_NO__<br/>
	Time index; week of transaction
* __display__<br/>
	Display location:
	- **0** - Not on Display
	- **1** - Store Front
	- **2** - Store Rear
	- **3** - Front End Cap
	- **4** - Mid-Aisle End Cap
	- **5** - Rear End Cap
	- **6** - Side-Aisle End Cap
	- **7** - In-Aisle
	- **9** - Secondary Location Display
	- **A** - In-Shelf
* __mailer__<br/>
	Mailer location:
	- **0** - Not on ad
	- **A** - Interior page feature
	- **C** - Interior page line item
	- **D** - Front page feature
	- **F** - Back page feature
	- **H** - Wrap front feature
	- **J** - Wrap interior coupon
	- **L** - Wrap back feature
	- **P** - Interior page coupon
	- **X** - Free on interior page
	- **Z** - Free on front page, back page or wrap

#### Sample

| PRODUCT_ID | STORE_ID | WEEK_NO | display | mailer |
|:--|:--|:-:|:--|:--|
| 26190 | 286 | 70 | 0 | A |

### coupon.csv

Campaign and coupon inclusion.

#### Schema

* __COUPON_UPC__<br/>
	Coupon ID.  Unique to household and campaign.
* __PRODUCT_ID__<br/>
	Product ID
* __CAMPAIGN__<br/>
	Campaign ID.  Ranges 1--30.

#### Sample

| COUPON_UPC | PRODUCT_ID | CAMPAIGN |
|:--|:--|:--|
| 10000089061 | 27160 | 4 |

### coupon_redempt.csv

Coupon redemption history.

#### Schema

* __household_key__<br/>
	Household ID
* __DAY__<br/>
	Time index; day when transaction occurred; i.e. when coupon was redeemed.
* __COUPON_UPC__<br/>
	Coupon ID.  Unique to household and campaign.
* __CAMPAIGN__<br/>
	Campaign ID.  Ranges 1--30.

#### Sample

| household_key | DAY | COUPON_UPC | CAMPAIGN |
|:--|--:|:--|:--|
| 1 | 421 | 10000085364 | 8 |

### hh_demographic.csv

Household demographics.

#### Schema

* __AGE_DESC__<br/>
	Estimated age range.
* __MARITAL_STATUS_CODE__<br/>
	Marital status:
	- *A* - Married
	- *B* - Single
	- *C* - Unknown
* __INCOME_DESC__<br/>
	Household income.
* __HOMEOWNER_DESC__<br/>
	Living setup: e.g. *homeowner*, *renter*, etc.
* __HH_COMP_DESC__<br/>
	Household composition.
* __HOUSEHOLD_SIZE_DESC__<br/>
	Size of household up to 5+
* __KID_CATEGORY_DESC__<br/>
	Number of children present up to 3+
* __household_key__<br/>
	Household ID

#### Sample

| AGE_DESC | MARITAL_STATUS_CODE | INCOME_DESC | HOMEOWNER_DESC | HH_COMP_DESC | HOUSEHOLD_SIZE_DESC | KID_CATEGORY_DESC | household_key |
|:-:|:-:|:-:|:--|:--|--:|--:|:--|
| 65+ | A | 35-49K | Homeowner | 2 Adults No Kids | 2 | None/Unknown | 1 |

### product.csv

Product reference.

#### Schema

* __PRODUCT_ID__<br/>
	Product ID
* __MANUFACTURER__<br/>
	Manufacturer ID
* __DEPARTMENT__<br/>
	Product grouping
* __BRAND__<br/>
	Whether product is *Private* or *National* label brand
* __COMMODITY_DESC__<br/>
	Product grouping
* __SUB_COMMODITY_DESC__<br/>
	Product grouping
* __CURR_SIZE_OF_PRODUCT__<br/>
	Product "serving size"

#### Sample

| PRODUCT_ID | MANUFACTURER | DEPARTMENT | BRAND | COMMODITY_DESC | SUB_COMMODITY_DESC | CURR_SIZE_OF_PRODUCT |
|:--|:--|:-:|:--|:--|:--|--:|
| 25671 | 2 | GROCERY | National | FRZN ICE | ICE - CRUSHED/CUBED | 22 LB |

### transaction_data.csv

Transaction data; per item sale.

#### Schema

* __household_key__<br/>
	Household ID
* __BASKET_ID__<br/>
	Transaction ID
* __DAY__<br/>
	Time index; day when transaction occurred
* __PRODUCT_ID__<br/>
	Product ID
* __QUANTITY__<br/>
	Number of items in basket
* __SALES_VALUE__<br/>
	Total net revenue from sale (net of *retail discount*); amount retailer receives
* __STORE_ID__<br/>
	Store ID
* __RETAIL_DISC__<br/>
	Total retail discount applied due to loyalty card; discount applied due to retailer's loyalty card program
* __TRANS_TIME__<br/>
	Time of day when transaction occurred: *%H%M*
* __WEEK_NO__<br/>
	Time index; week of transaction
* __COUPON_DISC__<br/>
	*Below the line discount*; amount to be deducted from the amount paid by customer paid by manufacturer; discount applied due to manufacturer coupon
* __COUPON_MATCH_DISC__<br/>
	*Above the line* discount; discount applied due to retailer's match of manufacturer coupon

#### Sample

| household_key | BASKET_ID | DAY | PRODUCT_ID | QUANTITY | SALES_VALUE | STORE_ID | RETAIL_DISC | TRANS_TIME | WEEK_NO | COUPON_DISC | COUPON_MATCH_DISC |
|:--|:--|:-:|:--|--:|--:|:--|--:|:-:|:-:|--:|--:|
| 2375 | 26984851472 | 1 | 1004906 | 1 | 1.39 | 364 | -0.6 | 1631 | 1 | 0 | 0 |

## Remarks

Raw data files to be hosted outside of GitHub since too large for pull-push.

Not as realistic given lack of actual dates (for seasonality), store location, etc.

## Sanity Checks

- [ ] Duplicates
- [ ] Missing values
- [ ] Outlying/typo values
- [ ] Consistency of *Campaign ID*-*Campaign description* pairs
- [ ] Consistency of *Day* - *Week No* pairs
- [ ] Change in unit prices across period
- [ ] Campaign schedule
- [ ] *Commodity description* consistency
