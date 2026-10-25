SELECT name, location, cuisines, rate
FROM restaurants
WHERE location LIKE '%Koramangala%'
AND cuisines LIKE '%North Indian%'
ORDER BY rate DESC
LIMIT 5;



SELECT cuisines, AVG(`approx_cost(for two people)`) AS avg_cost
FROM restaurants
GROUP BY cuisines
ORDER BY avg_cost DESC
LIMIT 3;




SELECT name, location, cuisines, rate
FROM restaurants
WHERE online_order = 'Yes'
AND rate < 3.0;
  
  
  
SELECT COUNT(*) AS budget_restaurants
FROM restaurants
WHERE `approx_cost(for two people)` < 400;
SELECT COUNT(*) AS mid_range_restaurants
FROM restaurants
WHERE `approx_cost(for two people)` >= 400
AND `approx_cost(for two people)` <= 800;
SELECT COUNT(*) AS premium_restaurants
FROM restaurants
WHERE `approx_cost(for two people)` > 800;



SELECT
    name ,
    COUNT(*) AS total_outlets
FROM restaurants
GROUP BY name
ORDER BY total_outlets DESC
LIMIT 10;