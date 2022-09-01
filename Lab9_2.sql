-- Yanira Manzano
-- Lab 9.2

use ap;

select 
	if(grouping(PaymentType) = 1, 'PaymentType', PaymentType) as 'PaymentType',
    sum(Total) as 'Total'
from 
	INVOICE
group by PaymentType with rollup
having grouping(PaymentType) = 1;
