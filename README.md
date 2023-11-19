# Cohort Analysis of an Online Retail Store
****

It’s that time of the year when you should evaluate your business activities. Therefore, do you have any concerns regarding altering marketing budgets, enhancing customer experience, or raising the retention rate? As a business owner, you understand the feeling that comes with seeing an increase in customers, subscriptions, sales, and even revenue. You may be tempted to keep expanding your marketing or advertising campaigns without conducting the necessary analysis to determine your customers’ lifetime value and retention rate.

## Cohort analysis
can be used to overcome these issues. It assesses the features of particular consumer groups in comparison to overall impressions and sales figures. When deciding whether to invest in your company, a “Venture capitalist” may request information such as cohort analysis to aid his decision. He wants to know:

 - If you can keep your subscribers or customers? at what rate? (Customer Retention)
 - What percentage of clients did you lose each month? (Churn Rate)
 - your customer’s Lifetime value.


This analysis can be used for retail stores and also for SaaS businesses with monthly subscriptions. A cohort in this context is a collection of individuals with similar characteristics. Cohorts of users can be divided in any way you see suitable, provided that each group has a characteristic in common and can be compared to the others.

****

## Data collection:
The dataset is Online Retail Dataset by Dr Daqing Chen, Director: Public Analytics group. chend ‘@’ lsbu.ac.uk, School of Engineering, London South Bank University, London SE1 0AA, UK. which can be accessed here "https://archive.ics.uci.edu/ml/datasets/online+retail"

It has 8 columns and 541,909 rows which I downloaded in Excel format.

****
## Data Cleaning:
The dataset needed cleaning as the following was observed:
 - Some rows are without “CustomerID”,
 - Some rows were duplicated
 - The Columns “UnitPrice” and “Quantity” had rows with numbers lesser than zero (negative numbers) and they can’t be beneficial to our work.
 - Hence all the duplicates, empty rows and irrelevant data were removed using the filter function in Excel to search for those empty rows. Also using the remove duplicates function. A clean Dataset of 320,900 rows and 8 columns.

****
## Data processing:
The already-cleaned data was the dataset that was entered into Python and SQL. You can find the Python code and SQL script uploaded in this repo.

****
## Data Visualization:

![Python Screenshot](https://user-images.githubusercontent.com/83390581/208318185-33e0b4bd-a141-4d34-9eed-74cfe1a5003d.png)

![SQL PIVOT TABLE](https://user-images.githubusercontent.com/83390581/208318224-a30b9f94-fcc0-46f3-b851-c3af9875a0bc.png)

![sql retention rate](https://user-images.githubusercontent.com/83390581/208318231-3fb5b30a-e2a2-4a11-895c-9398c5f6a690.png)

![Cohort Index](https://user-images.githubusercontent.com/83390581/208318236-08e8b99c-0547-4686-bf89-97ce48a1a5a6.png)


I felt that using Tableau to make the visualization was essential. The dataset was saved from SQL after all the processing was complete.
Furthermore, I created a new column called Revenue by multiplying the quantity by the unit price. The new dataset looks like the picture below and it was uploaded into Tableau.
The following Visuals are created in Tableau with some calculated fields.

![Cohort Retention Dashboard](https://user-images.githubusercontent.com/83390581/208318501-9af25109-4748-4e4b-919a-bb5c542c5d2b.png)

![new revenue dashboard](https://user-images.githubusercontent.com/83390581/208318280-6f1d7c56-8f3a-4276-8e8d-7e2d180e981d.png)

The interactive dashboard on Tableau can be found [here](https://public.tableau.com/app/profile/amarachi.nwoke.ugagbe/viz/CohortRetentionDashboard_16705837743370/CohortRetentionDashboard)

****

## Data interpretation and insights:

 * There are 13 cohorts in this. A cohort for each month’s batch. The lighter the color shade, the higher the values. This suggests that 52% of cohorts that purchased in December 2010 were still active 12 months later if we look at the 2010–12 cohort Month in the 12th Cohort Index. Alternatively, we can state that the business was successful in keeping 52% of customers who had previously purchased its items.
 
 - The first cohort: As can be seen in the graphic, there is a steep decline in sales starting in the second month (indexed as 2), when, on average, 70% of customers fail to make any purchases.
 
 - 90% of clients in the second cohort don’t make any purchases in the second month.

 - 78% of clients in the third cohort do not make any purchases in the second month.

 - It’s bad that 99% of customers in the fourth cohort don’t make any purchases in the second month!

 - 96% of clients for the 5th Cohort don’t make any purchases in the second month.

 - 77% of clients for the 6th Cohort don’t make any purchases in the second month.
 
 - 79% of customers in the 7th Cohort don’t make any purchases in the second month.
 
 - As observed in the eighth, ninth, tenth, eleventh, and twelveth cohorts, 77%, 78%, 77%, 76%, and 90% of buyers fail to make any purchases in the second month.
 
 - When compared to the previous cohorts, the first one (2010–12) appears to be different and performs fairly well. 
 
  - 52% of customers are still with them a year after the first purchase. This may be a group of devoted users that first signed up for the platform because of prior relationships they had with the retailer. That, however, is exceedingly challenging to precisely explain based on the dataset alone.
  
 - Again, The fifth cohort (2011–04) experienced growth, and by the eighth month, the business had seen a rise and 42% retention rate.

 - We can observe variations in retention over time across the entire matrix. The nature of the business, where customers make recurring transactions followed by periods of inactivity, may be the root cause of this.
 
 - Every month, there was a decline in both the number of customers and the amount of money made.
Once you've understood the happenings in the cohorts, you can then restrategize and plan for your marketing, customer experience and satisfaction and also product quality. This will impact positively going forward.

 - The analysis of the cohort for the retention rate is complete. Cohort analysis can also be done for other business matrices, such as Customer Life Time Value.
 
 ****

## Limitations:

I wanted to determine the customer’s lifetime value, but I lacked the necessary data. Keep in mind that the dataset was obtained and that there was no way to contact the company (stores) to obtain extra information that would have improved the analysis.


I am open to any collaboration with respect to data analysis, data storytelling and also opportunities to share my tech journey with anyone.

Till I come your way again…

Cheers!

