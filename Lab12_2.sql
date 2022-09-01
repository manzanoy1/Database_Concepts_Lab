-- Yanira Manzano
-- Lab 12 Part 2

use Heather_Design;

SELECT DISTINCT
    FirstName, LastName, Phone
FROM
    CUSTOMER
        JOIN
    SEMINAR_customer USING (customerid)
        JOIN
    seminar USING (seminarid)
WHERE
    SeminarTitle = 'Kitchen on a Big D Budget';


SELECT DISTINCT
    FirstName,
    LastName,
    Phone,
    p.ProductNumber,
    ProductDescription
FROM
    CUSTOMER c
        JOIN
    invoice i ON c.customerid = i.customerid
        JOIN
    line_item li ON i.invoicenumber = li.invoicenumber
        JOIN
    product p ON li.ProductNumber = p.productnumber
WHERE
    p.Productnumber LIKE 'V%'
ORDER BY LastName DESC , FirstName DESC , ProductNumber DESC;


SELECT 
    s.seminarid,
    seminardate,
    location,
    seminartitle,
    c.customerid,
    lastname,
    firstname
FROM
    customer c
        JOIN
    seminar_customer sc ON c.customerid = sc.customerid
        RIGHT JOIN
    seminar s ON sc.seminarid = s.seminarid;
    

SELECT 
    c.CustomerID,
    LastName,
    FirstName,
    i.InvoiceNumber,
    p.ProductNumber,
    ProductType,
    ProductDescription
FROM
    CUSTOMER c
        JOIN
    invoice i ON c.customerid = i.customerid
        JOIN
    line_item li ON i.invoicenumber = li.invoicenumber
        JOIN
    product p ON li.ProductNumber = p.productnumber;