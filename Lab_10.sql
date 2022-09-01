-- Yanira Manzano
-- Lab 10

use ap;

-- Q1
SELECT *
FROM vendors v INNER JOIN invoices iv
  ON v.vendor_id = iv.vendor_id;
  
-- Q2
SELECT vendor_name,
	invoice_number, 
	invoice_date,
	SUM(invoice_total - payment_total - credit_total) AS 'balance_due'
FROM vendors v INNER JOIN invoices iv
  ON v.vendor_id = iv.vendor_id
ORDER BY vendor_name;

-- Q3
SELECT vendor_name,
	default_account_number AS 'default_account', 
	account_description AS 'description'
FROM vendors v INNER JOIN general_ledger_accounts ga
  ON v.default_account_number = ga.account_number
ORDER BY vendor_name;