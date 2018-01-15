[Home](../README.md)

# IBM Watson IT Help Desk

[**Source**](https://www.ibm.com/communities/analytics/watson-analytics-blog/guide-to-sample-datasets/) | [**Description**](https://www.ibm.com/communities/analytics/watson-analytics-blog/it-help-desk/) | [**Download**](https://community.watsonanalytics.com/wp-content/uploads/2015/03/WA_Fn-UseC_-IT-Help-Desk.csv)

> Analyze helpdesk tickets, including number, amount of high priority, average response time and more. Understand what causes high priority tickets and improve resolution times with better understanding of ticket details.
>
> This data is from an Information Technology (IT) department interested in examining how quickly issues are resolved and improving satisfaction of customers.  To start their analysis, they have this data set of 100,000 closed tickets that were filed at their help desk.

## Files

| Filename | Columns | Rows | Size |
|:---------|--------:|-----:|-----:|
| WA_Fn-UseC_-IT-Help-Desk.csv | 10 columns | 100,000 rows | 8,372,702 bytes |

### WA_Fn-UseC_-IT-Help-Desk.csv

#### Schema

* __ticket__<br/>
	Ticket ID
* __requestor__<br/>
	Employee who submitted the ticket.
* __RequestorSeniority__<br/>
	Employee's seniority within the company.
* __ITOwner__<br/>
	IT employee who serviced the ticket.
* __FiledAgainst__<br/>
	Functional area against which the ticket was filed (*Systems*, *Software*, *Hardware*, *Access/Login*).
* __TicketType__<br/>
	Whether the ticket was a request for new services or an issue with existing services.
* __Severity__<br/>
	Submitter-assigned severity of the ticket.
* __Priority__<br/>
	IT-assigned priority of the ticket.
* __daysOpen__<br/>
	Number of days the ticket was open.
* __Satisfaction__<br/>
	Satisfaction with the resolution of the ticket (reported by the submitter).

#### Sample

| ticket | requestor | RequestorSeniority | ITOwner | FiledAgainst | TicketType | Severity | Priority | daysOpen | Satisfaction |
|---|---|---|---|---|---|---|---|---|---|
| 1 | 1929 | 1 - Junior | 50 | Systems | Issue | 2 - Normal | 0 - Unassigned | 3 | 1 - Unsatisfied |

#### Remarks

Lacks entries for open tickets.

## Sanity Checks

- [ ] Duplicate *ticket*s
- [ ] Missing values
- [ ] Outlying/typo values
