SELECT 
    r.contest_id ,
     round(((count(contest_id)/(SELECT count(user_id) FROM users))*100),2) as percentage
FROM register r
INNER JOIN users u
ON r.user_id=u.user_id
GROUP BY contest_id
ORDER BY percentage DESC,contest_id ;