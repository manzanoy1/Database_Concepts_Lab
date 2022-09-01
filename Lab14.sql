-- Yanira Manzano
-- 4/25/2022
-- Lab 14

-- Q1
use ap;

INSERT INTO terms
    (terms_id, terms_description, terms_due_days)
VALUES
    (6, 'Net due 120 days', 120);

-- Q2

UPDATE terms 
SET 
    terms_description = 'Net due 125 days',
    terms_due_days = 125
WHERE
    terms_id = 6;
    
-- Q3

DELETE FROM terms 
WHERE
    terms_id = 6;

-- Q4

INSERT INTO invoices
VALUES (DEFAULT, 32, 'AX-014-027', '2014-08-01', 434.58, 0, 0, 2, '2014-08-31', NULL);

-- Q5

INSERT INTO invoice_line_items 
VALUES (115, 1, 160, 180.23, 'Hard drive'), (115, 2, 527, 254.35, 'Exchange Server update');

-- Q6

UPDATE invoices 
SET 
    credit_total = invoice_total * .1,
    payment_total = invoice_total - credit_total
WHERE
    invoice_id = 115;

-- Q7

UPDATE vendors 
SET 
    default_account_number = 403
WHERE
    vendor_id = 44;

-- Q8

UPDATE invoices 
SET 
    terms_id = 2
WHERE
    vendor_id IN (SELECT 
            vendor_id
        FROM
            vendors
        WHERE
            default_terms_id = 2);

-- Q9

DELETE FROM invoice_line_items 
WHERE
    invoice_id = 115;

DELETE FROM invoices 
WHERE
    invoice_id = 115;