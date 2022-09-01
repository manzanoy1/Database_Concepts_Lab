-- Yanira Manzano
-- Lab 9.1

select
	CustomerID,
    sum(Sub_Total) as 'SubTotal'
from 
	INVOICES
group by
	invoice_date
having invoice_date between '03/01/2019' and '04/30/2019'
		and sum(Sub_Total) < 50;