-- NY Restaurants Project

SELECT * FROM nomnom;

SELECT DISTINCT neighborhood
FROM nomnom;

SELECT DISTINCT cuisine
FROM nomnom;

SELECT *
FROM nomnom
WHERE cuisine = 'Chinese';

SELECT * FROM nomnom
WHERE review >= 4;

SELECT * FROM nomnom
WHERE price = '$$$'
AND cuisine = 'Italian';

SELECT * 
FROM nomnom
WHERE name LIKE '%meatball%';

SELECT * 
FROM nomnom
WHERE neighborhood = 'Midtown'
OR neighborhood = 'Downtown'
OR neighborhood = 'Chinatown';

SELECT * FROM nomnom
WHERE health IS NULL;

SELECT * FROM nomnom
ORDER BY review DESC
LIMIT 10;

SELECT name,
    CASE
        WHEN review > 4.5 THEN 'Extraordinary'
        WHEN review > 4 THEN 'Excellent'
        WHEN review > 3 THEN 'Good'
        WHEN review > 2 THEN 'Fair'
        ELSE 'Poor'
    END AS 'Review'
FROM nomnom;

-- Fraud Detection Project

SELECT *
FROM transaction_data
LIMIT 10; 

SELECT full_name, email
FROM transaction_data
WHERE zip = '20252';

SELECT full_name, email
FROM transaction_data
WHERE full_name = 'Art Vandelay'
OR full_name LIKE '% der %';

SELECT ip_address, email
FROM transaction_data
WHERE ip_address LIKE '10.%';

SELECT email 
FROM transaction_data
WHERE email LIKE '%temp_email.com%';

SELECT *
FROM transaction_data
WHERE ip_address LIKE '120.%'
AND full_name LIKE 'John%';

-- Customer Segmentation Project

SELECT *
FROM users
LIMIT 20;

SELECT email, birthday
FROM users
WHERE birthday BETWEEN '1980-01-01' AND '1989-12-31';

SELECT email
FROM users
WHERE created_at < '2017-05-01';

SELECT email
FROM users
WHERE test = 'bears';

SELECT email
FROM users
WHERE campaign LIKE 'BBB%';

SELECT email
FROM users
WHERE campaign LIKE '%-2';

SELECT email
FROM users
WHERE campaign IS NOT NULL
AND test IS NOT NULL;

-- Davie's Burgers Subway Ad project

SELECT *
FROM orders
LIMIT 10;

SELECT DISTINCT order_date
FROM orders;

SELECT special_instructions
FROM orders
LIMIT 20;

SELECT special_instructions
FROM orders
WHERE special_instructions IS NOT NULL
LIMIT 20;

SELECT special_instructions
FROM orders
WHERE special_instructions IS NOT NULL
ORDER BY special_instructions ASC;

SELECT special_instructions
FROM orders
WHERE special_instructions IS NOT NULL
AND special_instructions LIKE '%sauce%';

SELECT special_instructions
FROM orders
WHERE special_instructions IS NOT NULL
AND special_instructions LIKE '%door%';

SELECT special_instructions
FROM orders
WHERE special_instructions IS NOT NULL
AND special_instructions LIKE '%box%';

SELECT special_instructions AS 'Notes', id AS '#'
FROM orders
WHERE special_instructions IS NOT NULL
AND special_instructions LIKE '%box%';








