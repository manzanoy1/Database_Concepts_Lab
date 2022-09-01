#Yanira Manzano
#Lab 7 Part 1

use ap;

SELECT 
    vendor_name,
    vendor_contact_last_name,
    vendor_contact_first_name
FROM
    vendors;
    
SELECT
	invoice_due_date,
    invoice_total,
    invoice_total * 100 / t.s.
FROM
	invoices;

SELECT
    invoice_number,
    invoice_date,
    invoice_total, 
    SUM(payment_total + credit_total) AS 'Payment_Credit_Total'
FROM
    invoices;
    
SELECT
	invoice_date AS 'mm-dd-yyyy'
FROM
	invoices;