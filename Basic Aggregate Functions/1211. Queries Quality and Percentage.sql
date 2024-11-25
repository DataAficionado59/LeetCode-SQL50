SELECT 
    query_name ,
    ROUND(AVG(rating/position),2) as quality,
    ROUND((AVG(CASE WHEN rating<3 THEN 1 ELSE 0 END)*100),2) AS poor_query_percentage
FROM queries
WHERE query_name IS NOT null
GROUP BY query_name