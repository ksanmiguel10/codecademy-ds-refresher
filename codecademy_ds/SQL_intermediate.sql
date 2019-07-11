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

-- Hacker News Project

 SELECT title, score
 FROM hacker_news
 ORDER BY score DESC
 LIMIT 5;
 
 SELECT SUM(score)
 FROM hacker_news;
 
 SELECT user, SUM(score)
 FROM hacker_news
 GROUP BY user
 HAVING SUM(score) > 200
 ORDER BY 2 DESC;
 
 SELECT (517 + 309 + 304 + 282) / 6366.0;
 
 SELECT user, COUNT(*)
 FROM hacker_news
 WHERE url LIKE '%https://www.youtube.com/watch?v=dQw4w9WgXcQ%'
 GROUP BY user
 ORDER BY COUNT(*) DESC;
 
 SELECT CASE
   WHEN url LIKE '%github.com%' THEN 'GitHub'
   WHEN url LIKE '%medium.com%' THEN 'Medium'
   WHEN url LIKE '%nytimes.com%' THEN 'NY Times'
   ELSE 'Other'
  END AS 'Source',
  COUNT(*)
FROM hacker_news
GROUP BY 1;

SELECT timestamp
FROM hacker_news
LIMIT 10;

SELECT timestamp,
   strftime('%H', timestamp)
FROM hacker_news
GROUP BY 1
LIMIT 20;

SELECT strftime('%H', timestamp) AS 'Hour',
    ROUND(AVG(score), 2) AS 'Score', 
    COUNT(*) AS 'Count'
FROM hacker_news
WHERE timestamp IS NOT NULL
GROUP BY 1
ORDER BY 1;

-- Metropolitan Museum of Art Project

SELECT * 
FROM met
LIMIT 10;

SELECT COUNT(*)
FROM met
WHERE department = 'American Decorative Arts';
 
SELECT COUNT(*)
FROM met
WHERE category LIKE '%celery%';

SELECT title, medium, date
FROM met
ORDER BY date ASC
LIMIT 10;

SELECT COUNT(*), country
FROM met
GROUP BY country
ORDER BY COUNT(*) DESC
LIMIT 10;

SELECT Count(*), category
FROM met
GROUP BY category
HAVING COUNT(*) > 100;

SELECT COUNT(*), medium
FROM met
WHERE medium LIKE '%gold%'
OR medium LIKE '%silver%'
GROUP BY 2
ORDER BY 1 DESC;




