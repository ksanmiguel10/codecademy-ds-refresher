-- Trends in startups Project

SELECT *
FROM startups;

SELECT COUNT(*)
FROM startups;

SELECT SUM(valuation)
FROM startups;

SELECT MAX(raised)
FROM startups;

SELECT MAX(raised)
FROM startups
WHERE stage = 'Seed';

SELECT MIN(founded)
FROM startups;

SELECT AVG(valuation)
FROM startups;

SELECT AVG(valuation), category
FROM startups
GROUP BY category;

SELECT ROUND((AVG(valuation)), 2), category
FROM startups
GROUP BY 2
ORDER BY 1 DESC;

SELECT category, COUNT(*)
FROM startups
GROUP BY category;

SELECT category, COUNT(*)
FROM startups
GROUP BY category
HAVING COUNT(*) > 3;

SELECT AVG(employees), location
FROM startups
GROUP BY 2;

SELECT AVG(employees), location
FROM startups
GROUP BY 2
HAVING AVG(employees) > 500;


