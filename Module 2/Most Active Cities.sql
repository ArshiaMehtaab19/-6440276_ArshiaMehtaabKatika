SELECT U.city, COUNT(DISTINCT U.user_id) AS total_users
FROM Users U
JOIN Registrations R ON U.user_id = R.user_id
GROUP BY U.city
ORDER BY total_users DESC
LIMIT 5;

