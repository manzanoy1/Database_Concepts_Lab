#Yanira Manzano
#Lab 7 part 2

use ap;

SELECT CUSTOMER
    FirstName,
    LastName,
    Phone
FROM
	CUSTOMER;
    
SELECT CUSTOMER
	(LastName AS 'Last_Name',
	FirstName AS 'First_Name',
    EmailAddress AS 'Email')
FROM
	CUSTOMER;
    
SELECT CUSTOMER
	(First_Name, ' ', Last_Name) AS 'Full_Name'
FROM 
	CUSTOMER;
       
SELECT
	Full_Name
FROM
	CUSTOMER