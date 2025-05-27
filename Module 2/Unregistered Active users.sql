SELECT U.user_id, U.name
FROM Users U
LEFT JOIN Registrations R ON U.user_id = R.user_id
WHERE U.created_at >= CURRENT_DATE - INTERVAL 30 DAY
GROUP BY U.user_id, U.name
HAVING COUNT(R.event_id) = 0;

