-- Yanira Manzano
-- Lab 12 Part 1

use ap;

-- Q4
SELECT 
    vendor_name,
    invoice_date,
    invoice_number,
    invoice_sequence,
    line_item_amount
FROM
    vendors
        JOIN
    invoices USING (vendor_id)
        JOIN
    invoice_line_items USING (invoice_id)
ORDER BY vendor_name , invoice_date , invoice_number , invoice_sequence;

-- Q5
SELECT 
    vendor_id,
    vendor_name,
    CONCAT(vendor_contact_first_name,
            ' ',
            vendor_contact_last_name) AS contact_name
FROM
    vendors
ORDER BY contact_name;

-- Q6
SELECT 
    vendor_id,
    vendor_name,
    CONCAT(vendor_contact_first_name,
            ' ',
            vendor_contact_last_name) AS contact_name
FROM
    vendors
ORDER BY contact_name;

SELECT 
    account_number, account_description, invoice_id
FROM
    general_ledger_accounts
        JOIN
    invoice_line_items USING (account_number)
ORDER BY account_number;

-- Q7
SELECT 
    vendor_name, vendor_state
FROM
    vendors
WHERE
    vendor_state = 'CA' 
UNION SELECT 
    vendor_name, 'Outside CA'
FROM
    vendors
WHERE
    vendor_state <> 'CA'
ORDER BY vendor_name