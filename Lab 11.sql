-- Yanira Manzano
-- Lab 11

use ap;

-- Q4
SELECT 	vendor_name, 
		invoice_date, 
		invoice_number, 
        invoice_sequence AS li_sequence,
        line_item_amount AS li_amount
FROM vendors v INNER JOIN invoices i ON v.vendor_id = i.vendor_id
INNER JOIN invoice_line_items li ON i.invoice_id = li.invoice_id
ORDER BY vendor_name, invoice_date;

-- Q5 
SELECT v1.vendor_id, 
       v1.vendor_name,
       CONCAT(v1.vendor_contact_first_name, ' ', v1.vendor_contact_last_name) AS contact_name
FROM vendors v1 JOIN vendors v2
    ON v1.vendor_id <> v2.vendor_id AND v1.vendor_contact_last_name = v2.vendor_contact_last_name  
ORDER BY v1.vendor_contact_last_name;

-- Q6
SELECT 	gl.account_number, 
		account_description, 
        invoice_id
FROM general_ledger_accounts gl LEFT JOIN invoice_line_items li
  ON gl.account_number = li.account_number
ORDER BY gl.account_number;
