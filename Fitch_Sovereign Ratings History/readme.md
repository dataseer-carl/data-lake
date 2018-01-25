[Home](../README.md)

# Fitch Sovereign Ratings History

[**Source**](https://quant.stackexchange.com/questions/739/are-public-historical-time-series-available-for-ratings-of-sovereign-debt) | [**Definitions**](https://www.fitchratings.com/site/definitions) |  [**Download**](https://www.fitchratings.com/web_content/ratings/sovereign_ratings_history.xls)

Log of changes in Fitch sovreign ratings per country.

## Files

| Filename | Columns | Rows | Size |
|:---------|--------:|-----:|-----:|
| sovereign_ratings_history.xls | 7 columns | 983 rows | 193,024 bytes |

### sovereign_ratings_history.xls

#### Schema

* __Country__
* __Date__<br/>
	Date of ratings update.
* __Foreign currency rating, long-term__: Foreign Currency Ratings additionally consider the profile of the issuer or note after taking into account T&C risk. This risk is usually communicated for different countries by the Country Ceiling, which caps the foreign currency ratings of most, though not all, issuers within a given country.
* __Foreign currency rating, short-term__: Lorem ipsum
* __Foreign currency rating, outlook/Watch__: Outlooks indicate the direction a rating is likely to move over a one- to two-year period.  Ratings in the ‘CCC’, ‘CC’ and ‘C’ categories typically do not carry Outlooks since the  volatility of these ratings is very high and outlooks would be of limited informational value. Defaulted ratings do not carry Outlooks. Rating Watches indicate that there is a heightened probability of a rating change and the likely direction of such a change.
* __Local currency rating, long-term__: The Local Currency International Rating measures the likelihood of repayment in the currency of the jurisdiction in which the issuer is domiciled and hence does not take account of the possibility that it will not be possible to convert local currency into foreign currency or make transfers between sovereign jurisdictions (transfer and convertibility [T&C] risk).
* __Local currency rating, outlook/Watch__: Outlooks indicate the direction a rating is likely to move over a one- to two-year period.  Ratings in the ‘CCC’, ‘CC’ and ‘C’ categories typically do not carry Outlooks since the  volatility of these ratings is very high and outlooks would be of limited informational value. Defaulted ratings do not carry Outlooks. Rating Watches indicate that there is a heightened probability of a rating change and the likely direction of such a change.

#### Sample

| Country | Date | long-term | short-term | outlook/Watch | long-term | outlook/Watch |
|:--|:-:|:-:|:-:|:-:|:-:|:-:|
| Abu Dhabi | 2 Jul 2007 | AA | F1+ | stable | AA | stable |

#### Remarks

> Last updated: 24 Aug 2012
>
> 1. blue = positive rating action, red = negative rating action.
> 1. DCR history kept for the 4 sovereigns not rated by Fitch IBCA prior to the merger with Duff & Phelps and affirmed 19/5/00 by Fitch.  
> 1. Outlooks assigned to all ratings, and used as a rating action starting from  21/9/00.
> 1. Separate and distinct FC and LC Rating Outlooks used, allowing them to differ starting from 1/10/03.
> 1. Rating affirmations are not listed, but are available from FitchResearch

Rating outlooks actually are compound variables; whether or not a `Rating Watch` has been indicated is a separate variable.

##### Rating scales

###### Long-term

- **AAA** *Highest Credit Quality*<br/>
   Lowest expectation of default risk.
- **AA** *Very High Credit Quality*<br/>
   Very low default risk.
- **A** *High Credit Quality*<br/>
   Low default risk.
- **BBB** *Good Credit Quality*<br/>
   Expectation of default risk are currently low.
- **BB** *Speculative*<br/>
   Elevated vulnerability to default risk.
- **B** *Highly Speculative*<br/>
   Material default risk is present.
- **CCC** *Substantial Credit Risk*<br/>
   Default is a real possibility.
- **CC** *Very High Levels of Credit Risk*<br/>
   Default of some kind appears probable.
- **C** *Exceptionally High Levels of Credit Risk*<br/>
   Default appears imminent or inevitable.
- **D** *Default*<br/>
   Indicates default; which is generally defined as either:
   * Failure to financial obligation; or
   * Bankruptcy filing, receivership, liquidation

According to this [source](https://books.google.com.ph/books?id=zJgdcaMNgwgC&pg=PA77&lpg=PA77&dq=fitch+ratings+dd&source=bl&ots=oyi5cAj3Eg&sig=cjX5XWcGyb_qur_YZL9reiyDb9U&hl=en&sa=X&ved=0ahUKEwiM7ZOt0O3YAhUBU7wKHe9rC_UQ6AEITzAI#v=onepage&q=fitch%20ratings%20dd&f=false), default ratings were *DDD*, *DD*, and *D* until 2005; became *RD* and *D* thereafter.

Another [source](http://www.ypf.com/english/investors/Paginas/Credit-Ratings.aspx) shows the definitions of the deprecated default ratings. 'DDD', 'DD', and 'D' ratings are based on their prospects for achieving partial or full recovery in a reorganization or liquidation of the obligor. While expected recovery values are highly speculative and cannot be estimated with any precision, the following serve as general guidelines. 'DDD' obligations have the highest potential for recovery, around 90%-100% of outstanding amounts and accrued interest. 'DD' indicates potential recoveries in the range of 50%-90% and 'D' the lowest recovery potential, i.e., below 50%.

###### Short-term

- **F1** *Highest Short-term Credit Quality*<br/>
   Strong intrinsic capacity for timely payment of financial commitment.
- **F2** *Good Short-term Credit Quality*<br/>
   Good intrinsic capacity for timely payment of financial commitment.
- **F3** *Fair Short-term Credit Quality*<br/>
   The intrinsic capacity for timely payment of financial commitment is adequate.
- **B** *Speculative Short-term Credit Quality*<br/>
   Minimal capacity for timely payment of financial commitments, plus heightened vulnerability to near-term adverse changes in financial and economic conditions.
- **C** *High Short-term Default risk*<br/>
   Default is real possibility.
- **RD** *Restricted Default*<br/>
   Indicates an entity that has defaulted on some of its financial commitments.
- **D** *Default*<br/>
   Indicates broad-based default event for an entity or for a short-term obligation.

## Sanity Checks

- [x] Unique rating change entries per date per country: *more than one entry for Cyprus, Jamaica, and Libya*
- [x] Consistent rating scales: *legacy default ratings, typos (`i`, `f3`)*
