-- Yanira Manzano
-- Lab 13

use ap;
-- Q3
SELECT 
    vendor_name,
    COUNT(*) AS invoice_count,
    SUM(invoice_total) AS invoice_total_sum
FROM
    vendors v
        JOIN
    invoices iv ON v.vendor_id = iv.vendor_id
GROUP BY vendor_name;

-- Q4
SELECT 
    account_description,
    COUNT(*) AS line_item_count,
    SUM(line_item_amount) AS line_item_amount_sum
FROM
    general_ledger_accounts gl
        JOIN
    invoice_line_items li ON gl.account_number = li.account_number
GROUP BY account_description
ORDER BY line_item_amount_sum;

-- Q5
SELECT 
    account_description,
    COUNT(*) AS line_item_count,
    SUM(line_item_amount) AS line_item_amount_sum
FROM
    general_ledger_accounts gl
        JOIN
    invoice_line_items li ON gl.account_number = li.account_number
        JOIN
    invoices iv ON li.invoice_id = iv.invoice_id
WHERE
    invoice_date BETWEEN '2018-04-01' AND '2018-06-30'
GROUP BY account_description
ORDER BY line_item_amount_sum