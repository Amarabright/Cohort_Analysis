---CLEAN DATA SET ALREAADY CLEANED WITH EXCEL
SELECT  [InvoiceNo]
      ,[StockCode]
      ,[Description]
      ,[Quantity]
      ,[InvoiceDate]
      ,[UnitPrice]
      ,[CustomerID]
      ,[Country]
  FROM [Portfolio Projects].[dbo].[Online_Retail]
   
   --COHORT ANALYSIS. Informstion needed are:
   ---Unique Identifier(CustomerId)
   ---Initial Start Date (first Invoice Date)
   ---Revenue Data

select
CustomerID,
MIN(InvoiceDate) first_purchase_date,
DATEFROMPARTS(YEAR(MIN(InvoiceDate)), month(min(InvoiceDate)), 1) Cohort_Date
into #Cohort
from [Portfolio Projects].[dbo].[Online_Retail]
group by CustomerID

select * from #Cohort

---Create Cohort Index, we need to join the two tables and get the months and year from the cohort and from the table
select
	mmm.*,
	cohort_index = year_diff *12 + month_diff + 1
into #Cohort_Retention
from
	(
		select
			mm.*,
			year_diff = Invoice_year - Cohort_year,
			month_diff = Invoice_month - Cohort_month
		from
			(
				select
					m.*,
					c.Cohort_Date,
					year(m.InvoiceDate) Invoice_year,
					month(m.InvoiceDate) Invoice_month,
					year(c.Cohort_Date) Cohort_year,
					month(c.Cohort_Date) Cohort_month
				from [Portfolio Projects].[dbo].[Online_Retail] m
				left join #Cohort c
					on m.CustomerID = c.CustomerID
			)mm
	)mmm
---where CustomerID = 13521

--- Create Cohort Table by Pivoting Data
select *
into #Cohort_pivot
from(
	select distinct
		CustomerID,
		Cohort_Date,
		cohort_index
	from #Cohort_Retention
)tbl
pivot(
	Count(CustomerID)
	for Cohort_Index in
	(
	[1],
	[2],
	[3],
	[4],
	[5],
	[6],
	[7],
	[8],
	[9],
	[10],
	[11],
	[12],
	[13])
)as pivot_table

select Cohort_Date,
	1.0 *[1]/[1] * 100 as [1],
	1.0 *[2]/[1] * 100 as [2],
	1.0 *[3]/[1] * 100 as [3],
	1.0 *[4]/[1] * 100 as [4],
	1.0 *[5]/[1] * 100 as [5],
	1.0 *[6]/[1] * 100 as [6],
	1.0 *[7]/[1] * 100 as [7],
	1.0 *[8]/[1] * 100 as [8],
	1.0 *[9]/[1] * 100 as [9],
	1.0 *[10]/[1] * 100 as [10],
	1.0 *[11]/[1] * 100 as [11],
	1.0 *[12]/[1] * 100 as [12],
	1.0 *[13]/[1] * 100 as [13]
from #Cohort_pivot
order by Cohort_Date